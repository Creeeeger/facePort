.class public final Lcom/android/systemui/user/shared/model/UserModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final id:I

.field public final image:Landroid/graphics/drawable/Drawable;

.field public final isGuest:Z

.field public final isSelectable:Z

.field public final isSelected:Z

.field public final name:Lcom/android/systemui/common/shared/model/Text;


# direct methods
.method public constructor <init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    iput-object p2, p0, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    iput-object p3, p0, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    iput-boolean p5, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    iput-boolean p6, p0, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/user/shared/model/UserModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/user/shared/model/UserModel;

    iget v1, p1, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    iget v3, p0, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    iget-object v3, p1, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    iget-boolean p1, p1, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserModel(id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", image="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isSelected="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSelectable="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isGuest="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
