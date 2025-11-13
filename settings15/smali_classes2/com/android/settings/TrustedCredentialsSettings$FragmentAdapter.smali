.class public final Lcom/android/settings/TrustedCredentialsSettings$FragmentAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    new-instance p0, Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    sget-object p0, Lcom/android/settings/TrustedCredentialsSettings;->TABS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method
