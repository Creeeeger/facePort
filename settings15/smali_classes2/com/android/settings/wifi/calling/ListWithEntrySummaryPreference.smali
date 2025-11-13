.class public Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.super Lcom/android/settings/CustomListPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/R$styleable;->ListWithEntrySummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V

    iget-object v1, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    return-object v1
.end method
