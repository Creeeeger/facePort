.class public Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;
.super Landroidx/preference/PreferenceGroup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field public mHost:Ljava/lang/String;

.field public mIndex:I

.field public mIsVisibleCheckImage:Z

.field public mLongClickable:Z

.field public mOnMenuItemClickListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

.field public final mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404d6

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    const p2, 0x7f0d0aa5

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object p2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/preference/Preference;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

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

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0307

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mIsVisibleCheckImage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mLongClickable:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final onClick()V
    .locals 1

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

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mHost:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1437bb

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1437bf

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    const v2, 0x7f1437bd

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f1437bc

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda1;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method
