.class public abstract Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$command(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;->commands:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;

    invoke-direct {v0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommand;

    iget-object v0, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;->keys:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommand;-><init>(Ljava/util/List;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$key(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;Landroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;->keys:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Icon;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Icon;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$key(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutCommandBuilder;->keys:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutKey$Text;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$shortcut(Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;->shortcuts:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;

    iget-object p2, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;->commands:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutBuilder;->label:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/android/systemui/keyboard/shortcut/ui/composable/Shortcut;-><init>(Ljava/lang/String;Ljava/util/List;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;-><init>(ILandroidx/compose/ui/graphics/vector/ImageVector;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    iget-object p1, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->subCategories:Ljava/util/List;

    iget p2, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->labelResId:I

    iget-object v0, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;-><init>(ILandroidx/compose/ui/graphics/vector/ImageVector;Ljava/util/List;)V

    return-object p0
.end method

.method public static final access$subCategory(Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategoryBuilder;->subCategories:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategory;

    iget-object p2, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;->shortcuts:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;->label:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
