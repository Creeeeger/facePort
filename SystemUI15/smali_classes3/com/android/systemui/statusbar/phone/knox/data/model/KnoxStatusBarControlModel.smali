.class public final Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final customTextSize:I

.field public final customTextStyle:I

.field public final customTextWidth:I

.field public final knoxStatusBarCustomText:Ljava/lang/String;

.field public final statusBarHidden:Z

.field public final statusBarIconsEnabled:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    iput p6, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;-><init>(ZZLjava/lang/String;III)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget p4, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    :cond_3
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget p5, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    :cond_4
    move v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    iget p6, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    :cond_5
    move v6, p6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;-><init>(ZZLjava/lang/String;III)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnoxStatusBarControlModel(statusBarHidden="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", statusBarIconsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", knoxStatusBarCustomText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->knoxStatusBarCustomText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customTextStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customTextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customTextWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->customTextWidth:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
