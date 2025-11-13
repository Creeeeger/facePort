.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential;,
        Lcom/android/settings/UserCredentialsSettings$ViewHolder;,
        Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final credentialViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 610
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    .line 612
    sget v1, Lcom/android/settings/R$id;->contents_userkey:I

    sget-object v2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 613
    sget v1, Lcom/android/settings/R$id;->contents_usercrt:I

    sget-object v2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    sget v1, Lcom/android/settings/R$id;->contents_cacrt:I

    sget-object v2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 620
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 623
    :cond_0
    sget p1, Lcom/android/settings/R$id;->alias:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isKnox()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 627
    sget p1, Lcom/android/settings/R$id;->purpose:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox()Z

    move-result p3

    if-nez p3, :cond_1

    .line 628
    sget p3, Lcom/android/settings/R$string;->credential_for_vpn_and_apps:I

    goto :goto_0

    .line 629
    :cond_1
    sget p3, Lcom/android/settings/R$string;->credential_for_wifi:I

    .line 627
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 633
    :cond_2
    sget p1, Lcom/android/settings/R$id;->purpose:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 634
    sget p3, Lcom/android/settings/R$string;->credential_for_vpn_and_apps:I

    goto :goto_1

    .line 635
    :cond_3
    sget p3, Lcom/android/settings/R$string;->credential_for_wifi:I

    .line 633
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 638
    :goto_2
    sget p1, Lcom/android/settings/R$id;->contents:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p4, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    move v1, p3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_6

    move p1, v0

    .line 640
    :goto_4
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 641
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 642
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    move p4, v0

    goto :goto_5

    :cond_5
    move p4, p3

    :goto_5
    invoke-virtual {v1, p4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    return-object p2
.end method


# virtual methods
.method protected announceRemoval(Ljava/lang/String;)V
    .locals 4

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->user_credential_removed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11d

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-eqz p1, :cond_0

    .line 112
    invoke-static {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->user_credentials:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    return-void
.end method

.method protected refreshItems()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasLoader-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
