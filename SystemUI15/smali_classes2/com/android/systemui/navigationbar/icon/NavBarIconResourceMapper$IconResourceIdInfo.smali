.class public final Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final darkResId:I

.field public final lightResId:I

.field public final needRtl:Z

.field public final type:Lcom/samsung/systemui/splugins/navigationbar/IconType;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iput p2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    iput p3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    iput-boolean p4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    iget v3, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    iget v3, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconResourceIdInfo(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lightResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", darkResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
