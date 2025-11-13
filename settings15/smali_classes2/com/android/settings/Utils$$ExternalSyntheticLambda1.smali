.class public final synthetic Lcom/android/settings/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/16 p2, 0x8f

    invoke-virtual {p0, p2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p2, p0, Landroidx/core/graphics/Insets;->left:I

    iget v0, p0, Landroidx/core/graphics/Insets;->right:I

    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    iget p0, p0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method
