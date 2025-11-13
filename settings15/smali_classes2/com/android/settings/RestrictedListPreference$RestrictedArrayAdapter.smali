.class public final Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSelectedIndex:I

.field public final synthetic this$0:Lcom/android/settings/RestrictedListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/RestrictedListPreference;

    const p1, 0x7f0d05d9

    const v0, 0x7f0a0fe2

    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput p4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    const v0, 0x7f0a0fe2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/RestrictedListPreference;

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    iget-object v3, v3, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p0, p3, :cond_4

    if-ne p1, p0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-object p2
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
