.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "dialog"

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setPkgInfo$1(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
