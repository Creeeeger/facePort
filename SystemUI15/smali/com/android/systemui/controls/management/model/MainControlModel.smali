.class public final Lcom/android/systemui/controls/management/model/MainControlModel;
.super Lcom/android/systemui/controls/management/model/MainModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

.field public needToHide:Z

.field public structure:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/management/model/MainModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    iput-boolean p3, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getType()Lcom/android/systemui/controls/management/model/MainModel$Type;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->layoutType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    :goto_0
    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    :cond_2
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MainControlModel(structure="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", controlWithState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", needToHide="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
