.class public final Lcom/android/settingslib/spa/widget/card/CardModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final buttons:Ljava/util/List;

.field public final containerColor:J

.field public final imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final isVisible:Lkotlin/jvm/functions/Function0;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final onDismiss:Lkotlin/jvm/functions/Function0;

.field public final text:Ljava/lang/String;

.field public final tintColor:J

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Ljava/util/List;I)V
    .locals 4

    sget-object v0, Lcom/android/settingslib/spa/widget/card/CardModel$1;->INSTANCE:Lcom/android/settingslib/spa/widget/card/CardModel$1;

    and-int/lit8 p6, p6, 0x10

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    move-object p4, v1

    :cond_0
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const-string p6, "isVisible"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    iput-wide v2, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    iput-wide v2, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    iput-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spa/widget/card/CardModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spa/widget/card/CardModel;

    iget-object v1, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    iget-wide v5, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    iget-wide v5, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    iget-wide v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v3, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->buttons:Ljava/util/List;

    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->tintColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CardModel(title="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imageVector="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", onDismiss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", buttons="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tintColor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", containerColor="

    const-string v4, ", onClick="

    invoke-static {v3, v1, v0, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
