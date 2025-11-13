.class public Lcom/android/settings/password/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# instance fields
.field protected mForFace:Z

.field protected mForFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFingerprint:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFace:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    if-eqz v0, :cond_0

    .line 198
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->-$$Nest$minterceptFinishIfNeeded(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 207
    const-class p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 188
    const-class p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_fingerprint"

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFingerprint:Z

    const-string v0, "for_face"

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFace:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFingerprint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mForFace:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    .line 175
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
