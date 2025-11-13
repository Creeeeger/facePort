.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;
.super Landroidx/preference/Preference;
.source "WifiP2pNoItemPreference.java"


# instance fields
.field private mBaseView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mBaseView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mBaseView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mEmptyHeight:I

    move v0, v2

    .line 68
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 69
    iget v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mEmptyHeight:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mEmptyHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget p0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mEmptyHeight:I

    add-int/lit16 p0, p0, -0xc8

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
