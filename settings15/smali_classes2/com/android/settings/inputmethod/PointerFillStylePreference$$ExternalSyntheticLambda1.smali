.class public final synthetic Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/PointerFillStylePreference;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PointerFillStylePreference;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/inputmethod/PointerFillStylePreference;

    iput p2, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/inputmethod/PointerFillStylePreference;

    iget v0, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/settings/inputmethod/PointerFillStylePreference$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController$1;

    iget-object v1, v1, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController$1;->this$0:Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;

    invoke-static {v1}, Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;->access$000(Lcom/android/settings/inputmethod/PointerFillStylePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "pointer_fill_style"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p1, Lcom/android/settings/inputmethod/PointerFillStylePreference;->mButtonHolder:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/settings/inputmethod/PointerFillStylePreference;->mButtonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/android/settings/inputmethod/PointerFillStylePreference;->mButtonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p0, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
