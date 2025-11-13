.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final iconId:I

.field public final isVisible:Lkotlinx/coroutines/flow/StateFlow;

.field public final messageId:I


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/flow/StateFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlinx/coroutines/flow/StateFlow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->messageId:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->iconId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->messageId:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->messageId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->iconId:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->iconId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->messageId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->iconId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FooterMessageViewModel(messageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->messageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterMessageViewModel;->isVisible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
