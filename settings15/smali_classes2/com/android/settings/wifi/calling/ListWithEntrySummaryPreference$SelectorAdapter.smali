.class public final Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V
    .locals 2

    iget-object v0, p2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const v1, 0x7f17025e

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f17025e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a1041

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0f81

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object v0, v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "ListWithEntrySummaryPreference"

    const-string v1, "getEntrySummary : mSummaries is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0c26

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iget-object v0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    return-object p2
.end method
