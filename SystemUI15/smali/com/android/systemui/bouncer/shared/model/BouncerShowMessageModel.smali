.class public final Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final colorStateList:Landroid/content/res/ColorStateList;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;

    iget-object v1, p1, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->colorStateList:Landroid/content/res/ColorStateList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BouncerShowMessageModel(message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;->message:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", colorStateList="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
