.class public Lcom/samsung/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSwitchStatus(Lcom/samsung/android/settings/nfc/AndroidBeam;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/AndroidBeam;->setSwitchStatus(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Lcom/samsung/android/settings/nfc/AndroidBeam$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/AndroidBeam;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private makeAlertDialog()V
    .locals 3

    .line 307
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    sget v1, Lcom/android/settings/R$string;->androidbeam_off_popup_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 309
    sget v1, Lcom/android/settings/R$string;->limit_app_contents_transfer:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$3;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$4;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$5;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private populateViewForOrientation()V
    .locals 6

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->startAnimation()V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->android_beam:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->android_beam_land:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->android_beam_image_land_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->android_beam_description_title_land:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->android_beam_image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->android_beam_description_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->setDescriptionText(Landroid/widget/TextView;)V

    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0xf

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_2
    return-void
.end method

.method private setDescriptionText(Landroid/widget/TextView;)V
    .locals 1

    .line 262
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget v0, Lcom/android/settings/R$string;->android_beam_explained_tablet:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_0
    sget v0, Lcom/android/settings/R$string;->android_beam_explained:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setSwitchStatus(ZZ)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method private startAnimation()V
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->android_beam_image_land:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->android_beam_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 291
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_android_beam_detail_soft:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 297
    new-instance v2, Lcom/samsung/android/settings/nfc/AndroidBeam$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/nfc/AndroidBeam$2;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x45

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 144
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    goto :goto_1

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-boolean p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez p1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_outgoing_beam"

    .line 124
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 130
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 131
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 133
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 135
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->android_beam:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 168
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDomesticUi()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe44

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 221
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method
