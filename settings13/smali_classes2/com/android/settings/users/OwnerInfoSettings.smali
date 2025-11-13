.class public Lcom/android/settings/users/OwnerInfoSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mDialog:Landroid/app/Dialog;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mPreference:Landroidx/preference/Preference;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/users/OwnerInfoSettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/OwnerInfoSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/OwnerInfoSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmDialog()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/settings/users/OwnerInfoSettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->owner_info_edit_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroidx/preference/Preference;)V
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/android/settings/users/OwnerInfoSettings;

    invoke-direct {v0}, Lcom/android/settings/users/OwnerInfoSettings;-><init>()V

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 136
    iput-object p1, v0, Lcom/android/settings/users/OwnerInfoSettings;->mPreference:Landroidx/preference/Preference;

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p1, "ownerInfo"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 148
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 149
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1

    if-lez p0, :cond_1

    .line 152
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x213

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 118
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    invoke-interface {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;->onOwnerInfoUpdated()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    .line 63
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->ownerinfo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/users/OwnerInfoSettings;->initView()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/android/settings/users/OwnerInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/OwnerInfoSettings$1;-><init>(Lcom/android/settings/users/OwnerInfoSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 90
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->owner_info_settings_title:I

    .line 91
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 92
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->save:I

    .line 93
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 94
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lcom/android/settings/users/OwnerInfoSettings;->mDialog:Landroid/app/Dialog;

    .line 97
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/OwnerInfoSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 98
    sget-object p0, Lcom/android/settings/users/OwnerInfoSettings;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method
