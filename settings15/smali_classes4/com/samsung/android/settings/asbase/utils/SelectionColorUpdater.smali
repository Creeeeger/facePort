.class public abstract Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final updateColor(Landroid/view/View;Z)V
    .locals 2

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->Icon:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->getColorId(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->Text:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->getColorId(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
