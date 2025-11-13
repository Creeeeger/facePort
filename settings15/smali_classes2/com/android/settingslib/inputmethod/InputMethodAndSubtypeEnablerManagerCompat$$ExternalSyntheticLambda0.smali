.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p2, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    iget-boolean v2, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-boolean v4, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v4, :cond_1

    :goto_0
    move v0, v3

    goto :goto_3

    :cond_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v2, :cond_2

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_2
    iget-boolean v2, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v2, :cond_3

    iget-boolean v5, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-boolean v1, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    move p0, v3

    goto :goto_2

    :cond_6
    move p0, v0

    :goto_2
    if-eqz v2, :cond_7

    move v0, v3

    :cond_7
    sub-int v0, p0, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    :goto_3
    return v0
.end method
