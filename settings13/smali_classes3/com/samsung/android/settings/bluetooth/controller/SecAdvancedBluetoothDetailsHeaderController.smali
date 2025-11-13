.class public Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecAdvancedBluetoothDetailsHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;


# static fields
.field private static final BATTERY_RANGE:I = 0xf

.field private static final CASE_LOW_BATTERY_LEVEL:I = 0x13

.field private static final DBG:Z = true

.field private static final LOW_BATTERY_LEVEL:I = 0xf

.field private static final TAG:Ljava/lang/String; = "SecAdvancedBtHeaderCtrl"

.field private static final WEARING_STATE_IN_CLOSE_CASE:I = 0x4

.field private static final WEARING_STATE_IN_EAR:I = 0x1

.field private static final WEARING_STATE_IN_OPEN_CASE:I = 0x3

.field private static final WEARING_STATE_OUTSIDE:I = 0x2

.field private static final WEARING_STATE_UNKNOWN:I


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mIsRegisterCallback:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance p1, Landroid/os/Handler;

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    return-void
.end method

.method private getBatteryDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_100:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-gtz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_disconnect:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-gt p1, v1, :cond_1

    .line 277
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_10:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-gt p1, v1, :cond_2

    .line 279
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_30:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x37

    if-gt p1, v1, :cond_3

    .line 281
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_55:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    if-gt p1, v1, :cond_4

    .line 283
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_bluetooth_battery_80:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private isDimState(I)Z
    .locals 0

    if-ltz p1, :cond_1

    const/16 p0, 0x64

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setBatteryIcon(Landroid/widget/LinearLayout;II)V
    .locals 0

    .line 383
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 386
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getBatteryDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setBatteryLevel(Landroid/widget/LinearLayout;II)V
    .locals 0

    .line 401
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 404
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    .line 405
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 407
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :goto_0
    invoke-static {p3}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setHeaderIcon(Landroid/widget/LinearLayout;III)V
    .locals 0

    .line 370
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 372
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-direct {p0, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHeaderText(Landroid/widget/LinearLayout;III)V
    .locals 0

    .line 392
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 395
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 396
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setLayoutGone()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_connected:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_no_cradle:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_no_cradle_one_battery:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->layout_one_battery:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;I)V
    .locals 1

    const/4 v0, -0x1

    .line 238
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;II)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;II)V
    .locals 1

    const/4 v0, -0x1

    .line 242
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;III)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;III)V
    .locals 2

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    sget v0, Lcom/android/settings/R$id;->header_icon_left:I

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_left:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;III)V

    .line 249
    sget v0, Lcom/android/settings/R$id;->header_icon_right:I

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_right:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;III)V

    .line 250
    sget v0, Lcom/android/settings/R$id;->header_icon_cradle:I

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_case:I

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;III)V

    .line 252
    sget v0, Lcom/android/settings/R$id;->bt_battery_icon_left:I

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryIcon(Landroid/widget/LinearLayout;II)V

    .line 253
    sget v0, Lcom/android/settings/R$id;->bt_battery_icon_right:I

    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryIcon(Landroid/widget/LinearLayout;II)V

    .line 254
    sget v0, Lcom/android/settings/R$id;->bt_battery_icon_cradle:I

    invoke-direct {p0, p1, v0, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryIcon(Landroid/widget/LinearLayout;II)V

    .line 256
    sget v0, Lcom/android/settings/R$id;->header_title_left:I

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_battery_left:I

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    .line 257
    sget v0, Lcom/android/settings/R$id;->header_title_right:I

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_battery_right:I

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    .line 258
    sget v0, Lcom/android/settings/R$id;->header_title_cradle:I

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_battery_cradle:I

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    .line 260
    sget v0, Lcom/android/settings/R$id;->bt_battery_summary_left:I

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    .line 261
    sget p2, Lcom/android/settings/R$id;->bt_battery_summary_right:I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    .line 262
    sget p2, Lcom/android/settings/R$id;->bt_battery_summary_cradle:I

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_connected:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutGone()V

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    sget v1, Lcom/android/settings/R$id;->header_icon_left:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 296
    sget v2, Lcom/android/settings/R$id;->header_icon_right:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 297
    sget v3, Lcom/android/settings/R$id;->header_icon_cradle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x66

    if-eqz v1, :cond_0

    .line 301
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_left:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    if-eqz v2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_right:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    if-eqz v3, :cond_2

    .line 311
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_case:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 315
    :cond_2
    sget v1, Lcom/android/settings/R$id;->bt_battery_icon_left:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 316
    sget v2, Lcom/android/settings/R$id;->bt_battery_icon_right:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 317
    sget v3, Lcom/android/settings/R$id;->bt_battery_icon_cradle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 324
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 328
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    :cond_5
    sget v1, Lcom/android/settings/R$id;->header_title_left:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    sget v2, Lcom/android/settings/R$id;->header_title_right:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    sget v3, Lcom/android/settings/R$id;->header_title_cradle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_6

    .line 336
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 337
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->sec_bluetooth_battery_left:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 340
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 341
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$string;->sec_bluetooth_battery_right:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 344
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 345
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_battery_cradle:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_8
    sget p0, Lcom/android/settings/R$id;->bt_battery_summary_left:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 349
    sget v1, Lcom/android/settings/R$id;->bt_battery_summary_right:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 350
    sget v2, Lcom/android/settings/R$id;->bt_battery_summary_cradle:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 353
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    if-eqz v1, :cond_a

    .line 357
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    if-eqz v0, :cond_b

    .line 361
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private updateSubLayout()V
    .locals 11

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_connected:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    .line 183
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 185
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v4

    aget-byte v4, v4, v2

    .line 186
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v5

    aget-byte v5, v5, v2

    .line 187
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v7, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_CRADLE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v6

    aget-byte v6, v6, v2

    const-string v7, "SecAdvancedBtHeaderCtrl"

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "batteryL = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", batteryR = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", batteryC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v2, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v7

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    sub-int v9, v4, v5

    if-gez v9, :cond_2

    sub-int v9, v5, v4

    :cond_2
    const/16 v10, 0xf

    if-ge v9, v10, :cond_3

    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    const/4 v0, -0x1

    if-eqz v7, :cond_7

    if-le v4, v5, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    if-eqz v2, :cond_6

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_one_battery:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_3

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_no_cradle_one_battery:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 218
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_3

    .line 220
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_no_cradle:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 224
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutGone()V

    if-ltz v0, :cond_9

    move v4, v0

    .line 230
    :cond_9
    invoke-direct {p0, v1, v4, v5, v6}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 232
    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    return-void
.end method


# virtual methods
.method public connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 144
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 145
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    const-string v0, "SecAdvancedBtHeaderCtrl"

    const-string v1, "Attri"

    .line 415
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method refresh()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->bluetooth_title_header:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    return-void

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->updateSubLayout()V

    :cond_4
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 423
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
