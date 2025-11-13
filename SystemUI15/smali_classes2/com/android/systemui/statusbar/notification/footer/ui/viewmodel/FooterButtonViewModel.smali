.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

.field public final isVisible:Lkotlinx/coroutines/flow/Flow;

.field public final labelId:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->labelId:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->labelId:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->labelId:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->labelId:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FooterButtonViewModel(labelId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->labelId:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityDescriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->accessibilityDescriptionId:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterButtonViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
