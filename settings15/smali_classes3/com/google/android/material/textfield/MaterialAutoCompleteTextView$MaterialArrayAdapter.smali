.class public final Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final pressedRippleColor:Landroid/content/res/ColorStateList;

.field public final selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

.field public final synthetic this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const p4, 0x10100a7

    filled-new-array {p4}, [I

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    filled-new-array {p2, p3}, [I

    move-result-object p2

    new-array v1, p3, [I

    filled-new-array {p4, v1}, [[I

    move-result-object p4

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, p4, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_1
    iput-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    iget p2, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_2

    const p4, 0x1010367

    const v0, -0x10100a7

    filled-new-array {p4, v0}, [I

    move-result-object p4

    const v1, 0x10100a1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iget-object v1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p4, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    invoke-static {p2, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p2

    iget v2, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    iget p1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    filled-new-array {p2, v1, p1}, [I

    move-result-object p1

    new-array p2, p3, [I

    filled-new-array {v0, p4, p2}, [[I

    move-result-object p2

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_2
    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iget p3, p3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    if-eqz p3, :cond_1

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iget v1, v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, p3, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p3

    :cond_1
    :goto_0
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p1
.end method
