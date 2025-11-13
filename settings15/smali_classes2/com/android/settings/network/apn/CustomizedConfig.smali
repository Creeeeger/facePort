.class public final Lcom/android/settings/network/apn/CustomizedConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final defaultApnProtocol:Ljava/lang/String;

.field public final defaultApnRoamingProtocol:Ljava/lang/String;

.field public final defaultApnTypes:Ljava/util/List;

.field public final isAddApnAllowed:Z

.field public final readOnlyApn:Z

.field public final readOnlyApnFields:Ljava/util/List;

.field public final readOnlyApnTypes:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    move v2, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    move-object v3, p2

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v4, p3

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v5, p4

    and-int/lit8 p1, p7, 0x20

    const-string p2, ""

    if-eqz p1, :cond_4

    move-object v6, p2

    goto :goto_0

    :cond_4
    move-object v6, p5

    :goto_0
    and-int/lit8 p1, p7, 0x40

    if-eqz p1, :cond_5

    move-object v7, p2

    goto :goto_1

    :cond_5
    move-object v7, p6

    :goto_1
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/network/apn/CustomizedConfig;-><init>(ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "readOnlyApnTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readOnlyApnFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultApnProtocol"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultApnRoamingProtocol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    iput-boolean p2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    iput-object p3, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    iput-object p5, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    iput-object p6, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/network/apn/CustomizedConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/network/apn/CustomizedConfig;

    iget-boolean v1, p1, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    iget-boolean v3, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    iget-boolean v3, p1, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnFields:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnTypes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CustomizedConfig(readOnlyApn="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAddApnAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/network/apn/CustomizedConfig;->isAddApnAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", readOnlyApnTypes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", readOnlyApnFields="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultApnTypes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultApnProtocol="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultApnRoamingProtocol="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/CustomizedConfig;->defaultApnRoamingProtocol:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v3, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
