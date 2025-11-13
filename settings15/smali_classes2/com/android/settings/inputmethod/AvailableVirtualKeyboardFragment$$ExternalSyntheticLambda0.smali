.class public final synthetic Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget-object p0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    sget-object v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    iget-boolean v1, p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v2, p2, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    move v0, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    move p0, v3

    goto :goto_0

    :cond_4
    move p0, v0

    :goto_0
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    sub-int v0, p0, v0

    :goto_1
    return v0
.end method
