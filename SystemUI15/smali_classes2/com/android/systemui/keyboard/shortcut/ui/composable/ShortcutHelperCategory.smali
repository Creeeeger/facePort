.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final labelResId:I

.field public final subCategories:Ljava/util/List;


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/graphics/vector/ImageVector;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/graphics/vector/ImageVector;",
            "Ljava/util/List<",
            "Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->labelResId:I

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iget v1, p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->labelResId:I

    iget v3, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->labelResId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->labelResId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->subCategories:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShortcutHelperCategory(labelResId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->labelResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", subCategories="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
