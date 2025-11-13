.class public final Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;
.super Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentUserImage:Landroid/graphics/drawable/Drawable;

.field public final currentUserName:Ljava/lang/String;

.field public final isGuestUser:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->isGuestUser:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;

    iget-object v1, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->isGuestUser:Z

    iget-boolean p1, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->isGuestUser:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->isGuestUser:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enabled(currentUserName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUserImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isGuestUser="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->isGuestUser:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
