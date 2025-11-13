.class public final Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    :cond_1
    return p0
.end method
