.class Lcom/android/settings/vpn2/AppManagementFragment$2;
.super Landroidx/preference/Preference;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/AppManagementFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/AppManagementFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/AppManagementFragment;Landroid/content/Context;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment$2;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 162
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 164
    sget v1, Lcom/android/settings/R$style;->vpn_app_management_version_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    const v0, 0x1020010

    .line 168
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 170
    sget v0, Lcom/android/settings/R$style;->vpn_app_management_version_summary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment$2;->this$0:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    .line 174
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxHeight(I)V

    const/4 p0, 0x0

    .line 175
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 176
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_1
    return-void
.end method
