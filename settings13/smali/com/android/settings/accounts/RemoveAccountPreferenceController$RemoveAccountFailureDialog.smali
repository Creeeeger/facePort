.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveAccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveAccountFailureDialog"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;


# direct methods
.method public static synthetic $r8$lambda$rsqkt8WoOBuJ1VwREPsq8Y-rkWQ(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->lambda$onCreateDialog$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)Lcom/samsung/android/settings/widget/SecRoundButtonView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRemoveAccountButton(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0()Ljava/lang/String;
    .locals 1

    .line 343
    sget v0, Lcom/android/settings/R$string;->remove_account_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    invoke-direct {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;-><init>()V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "removeAccountFailed"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t show RemoveAccountFailureDialog. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RemoveAccountPrefController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x24a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 338
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->remove_account_label:I

    .line 339
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 341
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)V

    const-string v2, "Settings.REMOVE_ACCOUNT_FAILED_ADMIN_RESTRICTION"

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->ok:I

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroid/app/Dialog;

    .line 348
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mRemoveAccountButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog$1;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method
