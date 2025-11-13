.class public final synthetic Lcom/samsung/android/settings/password/SetupChooseLockGenericForNoneGoogle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget p0, Lcom/samsung/android/settings/password/SetupChooseLockGenericForNoneGoogle;->$r8$clinit:I

    sget-object p0, Lcom/samsung/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->mSetupChooseLockGenericForNoneGoogleFragment:Lcom/samsung/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isSetupFlow"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
