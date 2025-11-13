.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/zen/ZenAccessSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->refreshUi()Z

    :goto_0
    return-void
.end method
