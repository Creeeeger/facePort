.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRemoveAccountDialog"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mDialog:Landroid/app/Dialog;

.field private mFrag:Landroidx/fragment/app/Fragment;

.field private mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$PIh4cmSRvYE8g6l8tFvtZ2OTnxE(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->lambda$onClick$1(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$et-9ACPRQhoS4it7GbFZgwe7Zn0(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->lambda$onCreateDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrag(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)Lcom/samsung/android/settings/widget/SecRoundButtonView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private checkReactivationLock(Landroid/content/Context;)Z
    .locals 2

    .line 240
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 241
    new-instance p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reactivation lock in Check= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoveAccountPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private synthetic lambda$onClick$1(Landroid/accounts/AccountManagerFuture;)V
    .locals 5

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "RemoveAccountPrefController"

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 279
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v3, "booleanResult"

    .line 280
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove account error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->show(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    const-string p0, "Activity is no longer alive, skipping results"

    .line 274
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 1

    .line 221
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-direct {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;-><init>()V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account"

    .line 158
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.intent.extra.USER"

    .line 159
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 161
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmRemoveAccount"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x249

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 263
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 267
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p2, "com.osp.app.signin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v2, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->-$$Nest$smlaunchSamsungAccountRemoveSetting(Landroid/app/Activity;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    new-instance v3, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    const-string v0, "account"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    const-string v0, "android.intent.extra.USER"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    sget v0, Lcom/android/settings/R$string;->really_remove_account_message_lmm:I

    goto :goto_0

    .line 190
    :cond_1
    sget v0, Lcom/android/settings/R$string;->really_remove_account_message:I

    .line 192
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->remove_account_label:I

    .line 196
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroid/app/Dialog;

    .line 200
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz v0, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mFrag:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 221
    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 225
    :cond_4
    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method
