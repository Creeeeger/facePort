.class public final Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;

.field public static nextId:I


# instance fields
.field public final appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

.field public final id:I

.field public final onClicked:Lkotlin/jvm/functions/Function0;

.field public final showDuringEntrance:Z

.field public final visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->Companion:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;IZZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;",
            "IZZ",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    iput p2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    iget-object v1, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    iget v3, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    iget-boolean v3, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    iget-boolean v3, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionButtonViewModel(appearance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->appearance:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDuringEntrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onClicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
