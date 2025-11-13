.class public final Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Lcom/android/systemui/common/shared/model/Icon;

.field public final isClickable:Z

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iput-object p2, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->isClickable:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;

    iget-object v1, p1, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iget-object v3, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->isClickable:Z

    iget-boolean p1, p1, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->isClickable:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->isClickable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecurityButtonConfig(icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isClickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;->isClickable:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
