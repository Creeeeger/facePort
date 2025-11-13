.class public Lcom/android/settings/network/ProviderModelSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ProviderModelSlice.java"


# instance fields
.field private final mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

.field private final mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$5Cx_6LGSJgRafekhOVu6tX-gZeo(Lcom/android/settings/network/ProviderModelSlice;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/ProviderModelSlice;->lambda$getMobileDataDisableDialog$2(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HgLUIL1_59hRjzChRJJTvuPCZu4(Lcom/android/settings/network/ProviderModelSlice;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ProviderModelSlice;->lambda$getMobileDataDisableDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yv6C6s-jvM15nSnn2W_Ml2L_RCU(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->lambda$getSlice$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getInternetType()I
    .locals 0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getInternetType()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$getMobileDataDisableDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->updateSlice()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getMobileDataDisableDialog$2(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, p3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    const/4 p2, 0x1

    .line 250
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/settings/network/ProviderModelSlice;->doCarrierNetworkAction(ZZI)V

    .line 252
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PrefHasTurnedOffMobileData"

    .line 254
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSlice$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProviderModelSlice"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showMobileDataDisableDialog(Landroid/app/AlertDialog;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "AlertDialog is null"

    .line 263
    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7d9

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 268
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method createEthernetRow()Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 4

    .line 328
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_settings_ethernet:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v3, 0x1010435

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 332
    invoke-static {v1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->ethernet:I

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->to_switch_networks_disconnect_ethernet:I

    .line 336
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected createWifiToggleRow(Landroid/content/Context;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    .line 343
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 345
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    xor-int/lit8 v0, p2, 0x1

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 346
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 349
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, 0xc000000

    .line 350
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v0, 0x0

    .line 352
    invoke-static {p0, v0, p2}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 354
    new-instance p2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    sget v0, Lcom/android/settings/R$string;->wifi_settings:I

    .line 355
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 356
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected defaultSubscriptionIsUsable(I)Z
    .locals 0

    .line 404
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p0

    return p0
.end method

.method doCarrierNetworkAction(ZZI)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->setCarrierNetworkEnabledIfNeeded(ZI)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->connectCarrierNetwork()V

    :cond_2
    return-void
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 300
    const-class p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method public getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 180
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, 0xa000000

    .line 181
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method getHelper()Lcom/android/settings/network/ProviderModelSliceHelper;
    .locals 2

    .line 305
    new-instance v0, Lcom/android/settings/network/ProviderModelSliceHelper;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/ProviderModelSliceHelper;-><init>(Landroid/content/Context;Lcom/android/settings/slices/CustomSliceable;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->provider_internet_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/network/NetworkProviderSettings;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v5, 0x579

    move-object v6, p0

    .line 291
    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/slices/CustomSliceable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method getMobileDataDisableDialog(ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 5

    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->mobile_data_disable_title:I

    .line 231
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobile_data_disable_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ProviderModelSlice;)V

    const/high16 v1, 0x1040000

    .line 234
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ProviderModelSlice;I)V

    const p0, 0x10401a4

    .line 244
    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected getPrimaryAction(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 379
    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 381
    invoke-static {p0, p1, v1, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method protected getSeeAllIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_arrow_forward:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v1, 0x1010429

    .line 372
    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    .line 371
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 373
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 375
    :cond_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method protected getSeeAllRow()Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->previous_connected_see_all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getSeeAllIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 362
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v3, 0x0

    .line 363
    invoke-virtual {v2, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 364
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 365
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ProviderModelSlice;->getPrimaryAction(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method getSharedPreference()Landroid/content/SharedPreferences;
    .locals 2

    .line 315
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-string v0, "ProviderModelSlice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->createListBuilder(Landroid/net/Uri;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getApRowCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "network provider worker is null."

    .line 111
    invoke-static {v2}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/ProviderModelSlice;->getInternetType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const-string v3, "get Ethernet item which is connected"

    .line 116
    invoke-static {v3}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->createEthernetRow()Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v2, v2, -0x1

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->isAirplaneModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->hasCarrier()Z

    move-result v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCarrier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->updateTelephony()V

    .line 127
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/NetworkProviderWorker;->getNetworkTypeDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 128
    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/settings/network/ProviderModelSliceHelper;->createCarrierRow(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 127
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v2, v2, -0x1

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/network/ProviderModelSlice;->createWifiToggleRow(Landroid/content/Context;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v2, v2, -0x1

    if-nez v3, :cond_4

    const-string p0, "Wi-Fi is disabled"

    .line 139
    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 142
    invoke-virtual {v1}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_9

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6

    goto :goto_4

    .line 149
    :cond_6
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v3, v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getConnectedWifiItem(Ljava/util/List;)Lcom/android/settings/wifi/slice/WifiSliceItem;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "get Wi-Fi item which is connected"

    .line 151
    invoke-static {v4}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v2, v2, -0x1

    .line 157
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Wi-Fi items which are not connected. Wi-Fi items : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 158
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda2;-><init>()V

    .line 159
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    .line 160
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    .line 161
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/slice/WifiSliceItem;

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_3

    :cond_8
    const-string v1, "add See-All"

    .line 167
    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getSeeAllRow()Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 170
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_4
    const-string p0, "Wi-Fi list is empty"

    .line 144
    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 85
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 386
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/settings/network/ProviderModelSlice;->getInternetType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 390
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldShowXLevelIcon()Z

    move-result p1

    .line 391
    invoke-static {v1, p1}, Lcom/android/settingslib/wifi/WifiUtils;->getInternetIconResource(IZ)I

    move-result p1

    .line 390
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 393
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 394
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 396
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method getWorker()Lcom/android/settings/network/telephony/NetworkProviderWorker;
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/NetworkProviderWorker;

    return-object p0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {v0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSubId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ProviderModelSlice;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ProviderModelSlice;->defaultSubscriptionIsUsable(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 201
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 202
    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    .line 203
    invoke-virtual {v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result v3

    .line 202
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    const-string v4, "PrefHasTurnedOffMobileData"

    .line 208
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/android/settings/network/ProviderModelSlice;->mHelper:Lcom/android/settings/network/ProviderModelSliceHelper;

    invoke-virtual {p1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileTitle()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobile_data_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->mobile_data_disable_message_default_carrier:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/ProviderModelSlice;->getMobileDataDisableDialog(ILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/ProviderModelSlice;->showMobileDataDisableDialog(Landroid/app/AlertDialog;)V

    return-void

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 225
    :goto_0
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/settings/network/ProviderModelSlice;->doCarrierNetworkAction(ZZI)V

    return-void
.end method
