.class public Lcom/samsung/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;,
        Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private isDisabled:Z

.field private isRegistered:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPaymentBackend(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monPaymentDefaultValidityVerified(Lcom/samsung/android/settings/nfc/PaymentSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->onPaymentDefaultValidityVerified(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z

    .line 97
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 99
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private onPaymentDefaultValidityVerified(Landroid/content/Intent;)V
    .locals 5

    .line 526
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    const-string v1, "PaymentSettings"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanRKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "componentName"

    .line 531
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v2, "isValid"

    const/4 v3, 0x0

    .line 532
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 533
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "onPaymentDefaultValidityVerified(): service=%s, isValid=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_3

    .line 536
    iget-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    if-eqz p1, :cond_2

    .line 538
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->nfc_payment_settings_default_offhost_failed:I

    .line 539
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 540
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 542
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 543
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 548
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 549
    iput-boolean v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    return-void

    .line 527
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz p0, :cond_5

    const-string p0, "onPaymentDefaultValidityVerified(): There\'s nothing to do for this product."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private refresh()V
    .locals 10

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v1, "PaymentSettings"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 324
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 326
    new-instance v4, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 327
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 328
    sget v5, Lcom/android/settings/R$string;->nfc_payment_enable_summary:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 331
    new-instance v4, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 335
    new-instance v6, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v7, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 340
    iget-object v7, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 341
    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 344
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load icon drawable of service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreen.getPreferenceCount() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/android/settings/R$layout;->sec_nfc_payment_empty:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-ne v4, v5, :cond_3

    .line 364
    sget v4, Lcom/android/settings/R$id;->nfc_payment_tap_image_land:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 365
    sget v5, Lcom/android/settings/R$id;->nfc_payment_land:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 366
    sget v7, Lcom/android/settings/R$id;->nfc_payment_land_layout:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 367
    sget v8, Lcom/android/settings/R$id;->nfc_payment_vert:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 368
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 370
    :cond_3
    sget v4, Lcom/android/settings/R$id;->nfc_payment_tap_image_vert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 371
    sget v5, Lcom/android/settings/R$id;->nfc_payment_vert:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 372
    sget v7, Lcom/android/settings/R$id;->nfc_payment_vert_layout:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 373
    sget v8, Lcom/android/settings/R$id;->nfc_payment_land:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 374
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/settings/R$anim;->sec_nfc_contactless_payments_default:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_4

    const/16 v6, 0xf

    .line 380
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 384
    :cond_4
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v6, :cond_5

    .line 386
    new-instance v7, Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v7, p0, v6}, Lcom/samsung/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    .line 400
    :cond_6
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 404
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/16 v1, 0xc

    .line 406
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 411
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 414
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 418
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 421
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 424
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private registerIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportSim(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    .line 182
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 183
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    .line 184
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.sec.android.nfc.cardemulation.ACTION_PAYMENT_DEFAULT_VALIDITY_VERIFIED"

    .line 186
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 188
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 189
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe4b

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 256
    iget-boolean v0, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    .line 258
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanRKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 260
    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    :cond_0
    const/4 v0, 0x0

    .line 266
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultAppInfo()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v3

    const-string v4, "PaymentSettings"

    if-eqz v3, :cond_1

    .line 269
    iput-boolean v1, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 270
    iget-object v0, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 271
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    .line 273
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->-$$Nest$fgetradioButton(Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;)Landroid/widget/RadioButton;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 274
    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->-$$Nest$fgetradioButton(Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "prevPaymentPreference is null"

    .line 277
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    .line 287
    iput-boolean v2, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 288
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v5, p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultAppInfo(Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 290
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->-$$Nest$fgetradioButton(Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;)Landroid/widget/RadioButton;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 291
    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->-$$Nest$fgetradioButton(Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "changedPaymentPreference is null"

    .line 294
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    .line 300
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_3

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous Default Payment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed Default Payment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0xe45

    const-wide/16 v0, 0xe46

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 142
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 230
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentSettings"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "payment_service_search_uri"

    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 235
    sget p2, Lcom/android/settings/R$string;->nfc_payment_menu_item_add_service:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 236
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 237
    new-instance p2, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "PaymentSettings"

    const/4 v1, 0x0

    .line 208
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "unRegister Receiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "already unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z

    .line 219
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 243
    instance-of p1, p1, Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 6

    const-string v0, "PaymentSettings"

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const/4 v2, 0x1

    .line 160
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z

    if-nez v3, :cond_2

    .line 161
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "register Receiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->registerIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 164
    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "already registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isRegistered:Z

    .line 171
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() backup component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
