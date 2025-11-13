.class public final Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mInflater:Landroid/view/LayoutInflater;

.field public final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    array-length p0, p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget p0, p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iget v0, v0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindListItem(Landroid/view/View;I)V

    return-object p2
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
