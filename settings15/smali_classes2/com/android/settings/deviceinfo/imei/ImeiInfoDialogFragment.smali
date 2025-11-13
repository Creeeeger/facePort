.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final TAG:Ljava/lang/String; = "ImeiInfoDialog"

.field public static final sViewIdsInDigitFormat:[I


# instance fields
.field public mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_NUMBER_VALUE:I

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_VALUE:I

    sget v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    sget v3, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sorted()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->sViewIdsInDigitFormat:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ImeiInfoDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_key_slot_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_key_dialog_title"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4d8

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_key_slot_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "arg_key_dialog_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const p1, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d020e

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    iget-object p1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_0

    const-string p1, "TelephonyManager for this slot is null. Invalid slot? id="

    const-string v1, "ImeiInfoDialog"

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_NUMBER_VALUE:I

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    sget v3, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_VALUE:I

    iget-object v5, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_1

    iget-object v6, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    const v3, 0x7f05001c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f142d47

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0a0978

    invoke-virtual {p0, v3, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    :cond_2
    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_PRL_VERSION_VALUE:I

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isCdmaLteEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez p1, :cond_5

    iget-object p1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    if-eqz p1, :cond_5

    :cond_4
    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    iget-object v3, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    iget-object v1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_GSM_SETTINGS:I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    iget-object v3, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    iget-object v1, v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_CDMA_SETTINGS:I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final setText(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140c90

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->sViewIdsInDigitFormat:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-static {p2}, Lcom/android/settings/deviceinfo/PhoneNumberUtil;->expandByTts(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
