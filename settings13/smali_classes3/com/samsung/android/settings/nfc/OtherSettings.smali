.class public Lcom/samsung/android/settings/nfc/OtherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;,
        Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private isRegistered:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDoNotFinishDialog:Z

.field private mIsDisabled:Z

.field private mIsSupportNonAidService:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedConflctDialogMsg:Ljava/lang/String;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mIsDisabled:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mIsSupportNonAidService:Z

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    .line 60
    new-instance v1, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor-IA;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 67
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$1;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$3;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private refresh()V
    .locals 9

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v1, "OtherSettings"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 239
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    new-instance v3, Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 241
    sget v4, Lcom/android/settings/R$layout;->sec_payment_explain:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 242
    sget v4, Lcom/android/settings/R$string;->nfc_other_enable_summary:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 244
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 245
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 249
    new-instance v4, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v4, v5, v6, v3, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v5, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 253
    iget-object v5, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load banner drawable of service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 266
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreen.getPreferenceCount() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 269
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/settings/R$layout;->sec_nfc_other_empty:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-ne v3, v4, :cond_4

    .line 273
    sget v3, Lcom/android/settings/R$id;->nfc_other_tap_image_land:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 274
    sget v4, Lcom/android/settings/R$id;->nfc_other_land:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 275
    sget v6, Lcom/android/settings/R$id;->nfc_other_land_layout:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 276
    sget v7, Lcom/android/settings/R$id;->nfc_other_vert:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    .line 277
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 279
    :cond_4
    sget v3, Lcom/android/settings/R$id;->nfc_other_tap_image_vert:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 280
    sget v4, Lcom/android/settings/R$id;->nfc_other_vert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 281
    sget v6, Lcom/android/settings/R$id;->nfc_other_vert_layout:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 282
    sget v7, Lcom/android/settings/R$id;->nfc_other_land:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    .line 283
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$anim;->sec_nfc_contactless_payments_default:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_5

    const/16 v5, 0xf

    .line 289
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 293
    :cond_5
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_6

    .line 295
    new-instance v6, Lcom/samsung/android/settings/nfc/OtherSettings$2;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/settings/nfc/OtherSettings$2;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mIsDisabled:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 313
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private registerIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 142
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method private showConflictDialog(Ljava/lang/String;)V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 414
    sget v1, Lcom/android/settings/R$string;->nfc_unable_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 416
    sget v1, Lcom/android/settings/R$string;->nfc_unable_service_retry:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 418
    :cond_1
    sget v1, Lcom/android/settings/R$string;->nfc_unable_service_retry3:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 420
    :goto_0
    sget v1, Lcom/android/settings/R$string;->btn_ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 422
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 424
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    return-void
.end method

.method private updateNonAidServices(Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;)V
    .locals 5

    .line 428
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mIsSupportNonAidService:Z

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 432
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->seName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->seName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 433
    :goto_0
    iget-boolean v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-nez v2, :cond_5

    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 435
    iget-boolean v4, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isNonAidService:Z

    if-nez v4, :cond_4

    goto :goto_1

    .line 436
    :cond_4
    iget-boolean v4, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->seName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "OtherSettings"

    const-string v1, "the non-aid service conflicted"

    .line 437
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/OtherSettings;->showConflictDialog(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 445
    iget-boolean v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isNonAidService:Z

    if-nez v3, :cond_7

    goto :goto_2

    .line 446
    :cond_7
    iget-object v3, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->seName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 447
    iget-boolean v3, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v3, :cond_8

    .line 448
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v4, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;I)V

    goto :goto_2

    .line 450
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v4, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;I)V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe4b

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 201
    iget-object v0, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 202
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/nfc/OtherBackend;->checkDefaultOtherApp(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-boolean v0, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isNonAidService:Z

    if-eqz v0, :cond_2

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/OtherSettings;->updateNonAidServices(Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-boolean v0, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;I)V

    .line 222
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe4b

    const-wide/16 v2, 0xe48

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "ro.vendor.nfc.support.nonaid"

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mIsSupportNonAidService:Z

    if-eqz p1, :cond_0

    const-string v0, "do_not_finish_dialog"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    if-eqz v0, :cond_1

    const-string v0, "saved_conflict_dialog_msg"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/OtherSettings;->showConflictDialog(Ljava/lang/String;)V

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mDoNotFinishDialog:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 115
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

    const-string v0, "OtherSettings"

    const/4 v1, 0x0

    .line 165
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    if-eqz v2, :cond_2

    .line 166
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_0

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

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 169
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_1

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

    .line 173
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    .line 176
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const-string v0, "OtherSettings"

    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    if-nez v3, :cond_0

    .line 127
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

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->registerIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
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

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isRegistered:Z

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    const-string v1, "do_not_finish_dialog"

    .line 191
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSavedConflctDialogMsg:Ljava/lang/String;

    const-string v0, "saved_conflict_dialog_msg"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
