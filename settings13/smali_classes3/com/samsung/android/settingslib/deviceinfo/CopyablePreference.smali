.class public Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;
.super Landroidx/preference/Preference;
.source "CopyablePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static copyPreference(Landroid/content/Context;Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V
    .locals 1

    const-string v0, "clipboard"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;->getCopyableText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 28
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 30
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 32
    new-instance p1, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;-><init>(Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
