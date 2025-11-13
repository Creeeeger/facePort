.class public final Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dump/DumpsysEntry;


# instance fields
.field public final dumpable:Lcom/android/systemui/Dumpable;

.field public final name:Ljava/lang/String;

.field public final priority:Lcom/android/systemui/dump/DumpPriority;


# direct methods
.method public constructor <init>(Lcom/android/systemui/Dumpable;Ljava/lang/String;Lcom/android/systemui/dump/DumpPriority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    iput-object p2, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v1, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    iget-object v3, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    iget-object p1, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DumpableEntry(dumpable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
