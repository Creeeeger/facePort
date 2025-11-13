.class public Lcom/android/settings/wifi/slice/WifiSlice;
.super Ljava/lang/Object;
.source "WifiSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;
    }
.end annotation


# static fields
.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x3

.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WIFI6E_NONE:[I

.field private static final STATE_WIFI6E_SECURED:[I

.field private static final STATE_WIFI6_NONE:[I

.field private static final STATE_WIFI6_SECURED:[I


# instance fields
.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentIconSet:I

.field private mDefaultIconResId:I

.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 93
    sget v2, Lcom/android/settings/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_SECURED:[I

    new-array v1, v3, [I

    .line 96
    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_NONE:[I

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 98
    sget v5, Lcom/android/settings/R$attr;->state_wifi_giga:I

    aput v5, v4, v3

    aput v2, v4, v0

    sput-object v4, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_GIGA_SECURED:[I

    new-array v4, v0, [I

    aput v5, v4, v3

    .line 101
    sput-object v4, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_GIGA_NONE:[I

    new-array v4, v1, [I

    .line 107
    sget v5, Lcom/android/settings/R$attr;->state_wifi_6:I

    aput v5, v4, v3

    aput v2, v4, v0

    sput-object v4, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_SECURED:[I

    new-array v4, v0, [I

    aput v5, v4, v3

    .line 110
    sput-object v4, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_NONE:[I

    new-array v1, v1, [I

    .line 113
    sget v4, Lcom/android/settings/R$attr;->state_wifi_6e:I

    aput v4, v1, v3

    aput v2, v1, v0

    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_SECURED:[I

    new-array v0, v0, [I

    aput v4, v0, v3

    .line 116
    sput-object v0, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_NONE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    .line 125
    sget v0, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mDefaultIconResId:I

    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 140
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 141
    iput-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    .line 143
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 144
    sget p2, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method

.method private getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 407
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0x4000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 409
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    const/high16 v0, 0x10000000

    .line 414
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 417
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 322
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mDefaultIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 327
    sget-object p1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_NONE:[I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 328
    iput v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    const/4 p1, -0x1

    goto/16 :goto_5

    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->semIsWifi6ENetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_SECURED:[I

    goto :goto_0

    .line 334
    :cond_1
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_NONE:[I

    .line 332
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v0, 0x4

    .line 335
    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    goto :goto_4

    .line 336
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->semIsWifi6Network()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_SECURED:[I

    goto :goto_1

    .line 340
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_NONE:[I

    .line 338
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v0, 0x3

    .line 341
    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    goto :goto_4

    .line 342
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->semIsOllehGigaAp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_GIGA_SECURED:[I

    goto :goto_2

    .line 346
    :cond_5
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_GIGA_NONE:[I

    .line 344
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v0, 0x2

    .line 347
    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    goto :goto_4

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 350
    sget-object v2, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_SECURED:[I

    goto :goto_3

    .line 351
    :cond_7
    sget-object v2, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_NONE:[I

    .line 349
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 352
    iput v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mCurrentIconSet:I

    .line 354
    :goto_4
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result p1

    .line 356
    :goto_5
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 357
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 359
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_8
    return-object v6
.end method

.method private getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->keywords_wifi:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 483
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 484
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 485
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 486
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;
    .locals 5

    .line 265
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 266
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiSlice;->getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 269
    iget-object p3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, p3}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p3, 0x0

    .line 274
    invoke-static {p0, p3, p1}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 276
    invoke-virtual {p2, p0}, Landroidx/slice/builders/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;

    :cond_1
    :goto_0
    return-object p2
.end method

.method private getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    .line 421
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 424
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 427
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 428
    invoke-virtual {v2, v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 430
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 477
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isCallerExemptUid(Landroid/content/Context;)Z
    .locals 4

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->config_exempt_wifi_permission_uid_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling uid name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 209
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isPermissionGranted(Landroid/content/Context;)Z
    .locals 7

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 223
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "android.permission.CHANGE_WIFI_STATE"

    .line 230
    invoke-virtual {v3, v5, v4, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    .line 233
    :goto_0
    new-instance v5, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v6}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 235
    invoke-virtual {v5, v1, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object p0

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v4

    :cond_1
    return v2

    .line 225
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create Context for package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiSlice"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isWifiEnabled()Z
    .locals 1

    .line 466
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 491
    const-class p0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    return-object p0
.end method

.method protected getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    .line 246
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    invoke-static {v0, p1, v1, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    .line 253
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 254
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    .line 255
    invoke-virtual {p2, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_0
    return-object p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .line 449
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    .line 452
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    const/16 v5, 0x25b

    move-object v6, p0

    .line 451
    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/slices/CustomSliceable;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 455
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->Theme_Settings_Home:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/slice/WifiSlice;->isCallerExemptUid(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/slice/WifiSlice;->isPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 161
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isWifiEnabled()Z

    move-result v3

    const/4 v4, 0x0

    .line 162
    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    if-eqz v3, :cond_b

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    move v0, v1

    goto :goto_2

    .line 171
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-lez v0, :cond_5

    .line 173
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {v3}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-eqz v3, :cond_6

    .line 178
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/slice/WifiSliceItem;

    .line 177
    invoke-direct {p0, v2, v3, v2}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isApRowCollapsed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 186
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_4
    const/4 v3, 0x3

    if-ge v1, v3, :cond_a

    if-ge v1, v0, :cond_8

    .line 189
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_5

    :cond_8
    if-ne v1, v0, :cond_9

    .line 191
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/slice/WifiSlice;->getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_5

    .line 193
    :cond_9
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 194
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 195
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 193
    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 198
    :cond_a
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 166
    :cond_b
    :goto_6
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 462
    sget p0, Lcom/android/settings/R$string;->menu_key_network:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 149
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 378
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 380
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v1

    const-string v2, "key_chosen_wifientry_key"

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 383
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->pref_title_network_details:I

    .line 385
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 386
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 387
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v1, 0x67

    .line 388
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 390
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/WifiDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 396
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 399
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "key_wifi_slice_uri"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 402
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 317
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 4

    .line 282
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 284
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v2, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 287
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 288
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 289
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 440
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 439
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 441
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
