.class public final synthetic Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-boolean v3, v2, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsChecked:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->getIdentifier()Ljava/util/UUID;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1, p2, v0, v2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "addSelectedItems : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportedLinksDialogFrg"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    instance-of p2, p1, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method
