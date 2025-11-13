.class public Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;
.super Landroidx/preference/PreferenceGroup;
.source "WirelessKeyboardSharePopupPreference.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mCheckImageView:Landroid/widget/ImageView;

.field private mHolderView:Landroid/view/View;

.field private mHost:Ljava/lang/String;

.field private mIndex:I

.field mIsVisibleCheckImage:Z

.field private mLongClickable:Z

.field public mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    .line 50
    iput-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    .line 58
    sget p2, Lcom/android/settings/R$layout;->sec_wireless_keyboard_share_popup_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 59
    new-instance p2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 147
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 155
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIndex:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->check_image_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mCheckImageView:Landroid/widget/ImageView;

    .line 66
    iget-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHolderView:Landroid/view/View;

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 74
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 76
    invoke-static {p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    sget v1, Lcom/android/settings/R$string;->wireless_keyboard_share_back:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_0
    sget p2, Lcom/android/settings/R$string;->wireless_keyboard_share_switch:I

    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    sget p2, Lcom/android/settings/R$string;->wireless_keyboard_share_remove:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 87
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 89
    sget p2, Lcom/android/settings/R$string;->wireless_keyboard_share_change_device:I

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 91
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 92
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 93
    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 95
    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    .line 92
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    .line 117
    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setCheckImageVisibility(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    .line 113
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIndex:I

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    return-void
.end method
