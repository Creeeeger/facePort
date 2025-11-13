.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;
    }
.end annotation


# instance fields
.field mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

.field private mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

.field private mChallenge:J

.field private mEnrollClicked:Z

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

.field private mFingerprintsRenaming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFooterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

.field private mSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$E2HGZJ5XuhzSj5rO57QOf4377nI(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$updateFooterColumns$2(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tmw7MRP6yn3zskvA4ih2s0hUZ70(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$updateFooterColumns$0(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iIf16jaboDdAWqYtgX1KxFcsJIY(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$updateFooterColumns$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jEGEcfXzEy463FZQ7MyvfbXcuKQ(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$onActivityResult$4(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQqSQCOuwAAdnZ8bbG9OhRx2G5Y(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$showRenameDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInFingerprintLockout(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhighlightFingerprintItem(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrenameFingerPrint(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryFingerprint(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAddPreference(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetFilters()[Landroid/text/InputFilter;
    .locals 1

    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    .line 165
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    .line 192
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    .line 218
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 770
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method private addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 8

    .line 442
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 443
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 446
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 447
    new-instance v5, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V

    .line 449
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v5, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 452
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 453
    sget v6, Lcom/android/settings/R$drawable;->ic_fingerprint_24dp:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 454
    iget-object v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->isRemovingFingerprint(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 457
    :cond_0
    iget-object v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    iget-object v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    :cond_1
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 461
    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_2
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "key_fingerprint_add"

    .line 464
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 465
    sget v1, Lcom/android/settings/R$string;->fingerprint_add_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 466
    sget v1, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 467
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 468
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 469
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createFooterPreference(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private createFooterPreference(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 496
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 497
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;

    .line 498
    new-instance v3, Lcom/android/settingslib/widget/FooterPreference$Builder;

    invoke-direct {v3, v0}, Lcom/android/settingslib/widget/FooterPreference$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mTitle:Ljava/lang/CharSequence;

    .line 499
    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/FooterPreference$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/FooterPreference$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/widget/FooterPreference$Builder;->build()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v2

    if-lez v1, :cond_1

    const/16 v3, 0x8

    .line 501
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/FooterPreference;->setIconVisibility(I)V

    .line 511
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 434
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings_fingerprint:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 435
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFilters()[Landroid/text/InputFilter;
    .locals 3

    .line 834
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    sget v1, Lcom/android/settings/R$drawable;->preference_highlight:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 698
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private highlightFingerprintItem(I)V
    .locals 3

    .line 702
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 704
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 706
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 711
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 714
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private isUdfps()Z
    .locals 1

    .line 403
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorProperties:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 404
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityResult$4(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 660
    iput-wide p4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    .line 661
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 663
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method private synthetic lambda$showRenameDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method private static synthetic lambda$updateFooterColumns$0(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 370
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$updateFooterColumns$1()Ljava/lang/String;
    .locals 1

    .line 379
    sget v0, Lcom/android/settings/R$string;->security_fingerprint_disclaimer_lockscreen_disabled_1:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateFooterColumns$2(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 384
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 4

    .line 727
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 728
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 729
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x65

    .line 730
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    .line 731
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 732
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 733
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 734
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 735
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 736
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hide_insecure_options"

    .line 742
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 745
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x66

    .line 747
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    return-void
.end method

.method private retryFingerprint()V
    .locals 2

    .line 279
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isUdfps()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 285
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-eqz v0, :cond_2

    return-void

    .line 293
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->startAuthentication(I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 10

    .line 611
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 612
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 613
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "fingerprint"

    if-eqz v2, :cond_0

    .line 614
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 615
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    .line 616
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 617
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 621
    :goto_0
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 624
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 625
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 626
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 627
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->stopAuthentication()V

    return-void
.end method

.method private updateAddPreference()V
    .locals 9

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_fingerprint_add"

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 481
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v2, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 484
    :goto_0
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v5

    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->fingerprint_add_max:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 487
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_3

    if-nez v5, :cond_3

    .line 488
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateFooterColumns(Landroid/app/Activity;)V
    .locals 7

    .line 365
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const/16 v1, 0x20

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 369
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 374
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    .line 375
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 376
    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;

    invoke-direct {v4, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn-IA;)V

    .line 377
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v5, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    const-string v6, "Settings.FINGERPRINT_UNLOCK_DISABLED_EXPLANATION"

    invoke-virtual {v3, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mTitle:Ljava/lang/CharSequence;

    .line 383
    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iput-object v3, v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mLearnMoreClickListener:Landroid/view/View$OnClickListener;

    .line 385
    sget p1, Lcom/android/settings/R$string;->admin_support_more_info:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mLearnMoreOverrideText:Ljava/lang/CharSequence;

    .line 386
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;

    invoke-direct {p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn-IA;)V

    .line 389
    sget v0, Lcom/android/settings/R$string;->security_fingerprint_disclaimer_lockscreen_disabled_2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mTitle:Ljava/lang/CharSequence;

    .line 392
    iput-object v2, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mLearnMoreClickListener:Landroid/view/View$OnClickListener;

    .line 393
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;

    invoke-direct {p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn-IA;)V

    .line 396
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_home_screen_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mTitle:Ljava/lang/CharSequence;

    .line 397
    iput-object v2, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$FooterColumn;->mLearnMoreClickListener:Landroid/view/View$OnClickListener;

    .line 398
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterColumns:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 533
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 754
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 757
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 645
    sget p0, Lcom/android/settings/R$string;->help_url_fingerprint:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 264
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 256
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 258
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-eqz p1, :cond_3

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 272
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 650
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    if-ne p1, p3, :cond_5

    .line 674
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mEnrollClicked:Z

    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 676
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 677
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 678
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 652
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const/4 p1, 0x1

    const-string v0, "FingerprintSettings"

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Password not confirmed"

    .line 670
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 654
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 655
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_2

    :cond_4
    const-string p1, "Data null or GK PW missing"

    .line 666
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 306
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 310
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    .line 311
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorProperties:Ljava/util/List;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 315
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "challenge"

    const-wide/16 v4, -0x1

    .line 316
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "authenticate_sidecar"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-nez v1, :cond_0

    .line 321
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 323
    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "removal_sidecar"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-nez v1, :cond_1

    .line 330
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 332
    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    invoke-virtual {v1, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setFingerprintUpdater(Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;)V

    .line 335
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v1, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 338
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    if-eqz v1, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 343
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    const-string v1, "mFingerprintsRenaming"

    .line 347
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 348
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const/4 v1, 0x0

    const-string v2, "launched_confirm"

    .line 350
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 353
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 354
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    .line 353
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 357
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 359
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 361
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateFooterColumns(Landroid/app/Activity;)V

    return-void
.end method

.method public onDeleteClick(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 5

    .line 585
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 586
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 587
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FingerprintSettings"

    const-string p1, "Fingerprint delete in progress, skipping"

    .line 591
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 594
    :cond_1
    invoke-static {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    move-result-object p1

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :cond_2
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    .line 600
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fingerprint"

    .line 601
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "isProfileChallengeUser"

    .line 602
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 604
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 606
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 685
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 686
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-wide v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 538
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 539
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    .line 544
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->stopAuthentication()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 634
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fingerprint_enable_keyguard_toggle"

    .line 635
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 566
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_fingerprint_add"

    .line 567
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 568
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mEnrollClicked:Z

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    .line 571
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 570
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 574
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 575
    :cond_0
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v0, :cond_1

    .line 576
    move-object v0, p1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 577
    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 578
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 580
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 521
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 525
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 526
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_0

    .line 527
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const-string v1, "launched_confirm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    const-string v0, "mFingerprintsRenaming"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 550
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mEnrollClicked:Z

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 2

    .line 412
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "FingerprintSettings"

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove preference with key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find preference to remove: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
