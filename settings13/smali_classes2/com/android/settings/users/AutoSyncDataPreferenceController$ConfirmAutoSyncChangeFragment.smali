.class public Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AutoSyncDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field mChangeState:Z

.field mDialog:Landroid/app/Dialog;

.field mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field mPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mChangeState:Z

    return-void
.end method

.method static newInstance(ZILjava/lang/String;)Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
    .locals 3

    .line 216
    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enabling"

    .line 218
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "userId"

    .line 219
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "key"

    .line 220
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    const-string p0, "AutoSyncDataController"

    const-string/jumbo v0, "updateDialogAnchorView "

    .line 280
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 285
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 286
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 287
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1

    if-lez p0, :cond_1

    .line 290
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x217

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enabling"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 334
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mChangeState:Z

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "enabling"

    .line 308
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo v0, "userId"

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 309
    invoke-static {p2, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 312
    instance-of v0, p0, Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_0

    .line 313
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    const-string v0, "key"

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 320
    instance-of p1, p0, Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 321
    check-cast p0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    .line 240
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 252
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 254
    sget p1, Lcom/android/settings/R$string;->data_usage_auto_sync_off_dialog_title:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 255
    sget p1, Lcom/android/settings/R$string;->data_usage_auto_sync_off_dialog:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 257
    :cond_1
    sget p1, Lcom/android/settings/R$string;->data_usage_auto_sync_on_dialog_title:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 258
    sget p1, Lcom/android/settings/R$string;->data_usage_auto_sync_on_dialog:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 267
    :goto_0
    sget p1, Lcom/android/settings/R$string;->ok:I

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 268
    sget p1, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mDialog:Landroid/app/Dialog;

    .line 271
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 272
    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 347
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    .line 348
    iget-boolean v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mChangeState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "enabling"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 339
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 340
    iget-boolean v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mChangeState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "enabling"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method show(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 230
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "confirmAutoSyncChange"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
