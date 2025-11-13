.class public final Lcom/android/systemui/media/controls/shared/model/MediaButton;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final reserveNext:Z

.field public final reservePrev:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p2, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p4, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p5, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-boolean p6, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    iput-boolean p7, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move p7, v0

    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    iget-object v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getActionById(I)Lcom/android/systemui/media/controls/shared/model/MediaAction;
    .locals 1

    const v0, 0x7f0a0062

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0061

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0063

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0059

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_3
    const v0, 0x7f0a005a

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/shared/model/MediaAction;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/shared/model/MediaAction;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/shared/model/MediaAction;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/shared/model/MediaAction;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/shared/model/MediaAction;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    invoke-static {v1, v2, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaButton(playOrPause="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextOrCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prevOrCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", custom0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", custom1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reserveNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reservePrev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
