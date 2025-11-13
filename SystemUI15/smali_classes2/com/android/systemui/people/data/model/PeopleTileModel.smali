.class public final Lcom/android/systemui/people/data/model/PeopleTileModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final hasNewStory:Z

.field public final isDndBlocking:Z

.field public final isImportant:Z

.field public final key:Lcom/android/systemui/people/widget/PeopleTileKey;

.field public final userIcon:Landroid/graphics/drawable/Icon;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Landroid/graphics/drawable/Icon;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    iput-object p2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    iput-boolean p4, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    iput-boolean p5, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    iput-boolean p6, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/people/data/model/PeopleTileModel;

    iget-object v1, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    iget-object v3, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    iget-boolean v3, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    iget-boolean v3, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    iget-boolean p1, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PeopleTileModel(key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasNewStory="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isImportant="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDndBlocking="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
