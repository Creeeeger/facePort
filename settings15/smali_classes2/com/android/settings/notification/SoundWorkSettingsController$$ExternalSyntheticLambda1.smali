.class public final synthetic Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/SoundWorkSettingsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/SoundWorkSettingsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/SoundWorkSettingsController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/SoundWorkSettingsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mParent:Lcom/android/settings/notification/SoundWorkSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "UnifyWorkDialogFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/notification/SoundWorkSettingsController$UnifyWorkDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/SoundWorkSettingsController$UnifyWorkDialogFragment;-><init>()V

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    const-string v1, "sync_parent_sounds"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->disableWorkSyncSettings()V

    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method
