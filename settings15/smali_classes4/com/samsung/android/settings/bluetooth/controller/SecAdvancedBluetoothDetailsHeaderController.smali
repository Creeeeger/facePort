.class public Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.field mIsInCase:Z

.field mIsRegisterCallback:Z

.field mIsSingleBattery:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsInCase:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    return-void
.end method

.method private getBatteryDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f08037d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f080383

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-gt p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f08037c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-gt p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f08037e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x37

    if-gt p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f08037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    if-gt p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f080380

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getDeviceIconIndex()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getHeaderCaseDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCaseIcon: path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScspUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_NAME_CASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_EXTENSION_SVG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getDeviceIconIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0806df

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080389

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getHeaderLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLeftIcon: path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScspUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_NAME_LEFT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_EXTENSION_SVG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getDeviceIconIndex()I

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f0806df

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080390

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getHeaderRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRightIcon: path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScspUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_NAME_RIGHT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_EXTENSION_SVG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getDeviceIconIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0806df

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080392

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
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

.method private setBatteryArcProgress(Landroid/widget/LinearLayout;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x1e

    if-ge p3, p2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f060566

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f060565

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBatteryIcon(Landroid/widget/LinearLayout;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getBatteryDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setBatteryLevel(Landroid/widget/LinearLayout;II)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p3}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0271

    const-string v1, " "

    if-ne p2, p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1421b5

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p3, p3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0894

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v2, 0x7f1421b7

    const v3, 0x7f1421b6

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p3, p3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0892

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0a0272

    if-ne p2, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const p1, 0x7f0a0273

    if-ne p2, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string p0, "SecAdvancedBtHeaderCtrl"

    const-string/jumbo p1, "setBatteryLevel wrong viewById"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, p1, v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setHeaderIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getDeviceIconIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0806df

    const v2, 0x7f0a0234

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v2, 0x7f080384

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private setHeaderIcon(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x72

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

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

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3ee66666    # 0.45f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setLayoutGone()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0886

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0891

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0892

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0894

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;II)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;III)V

    return-void
.end method

.method private setLayoutResource(Landroid/widget/LinearLayout;III)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const v2, 0x7f0a0719

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/Drawable;I)V

    const v0, 0x7f0a071d

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/Drawable;I)V

    const v0, 0x7f0a0718

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderCaseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderIcon(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/Drawable;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    const v1, 0x7f0a071b

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryArcProgress(Landroid/widget/LinearLayout;II)V

    const v0, 0x7f0a071c

    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryArcProgress(Landroid/widget/LinearLayout;II)V

    const v0, 0x7f0a071a

    invoke-direct {p0, p1, v0, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryArcProgress(Landroid/widget/LinearLayout;II)V

    const v0, 0x7f0a0726

    const v1, 0x7f1421b6

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    const v0, 0x7f0a0727

    const v1, 0x7f1421b7

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    const v0, 0x7f0a0724

    const v1, 0x7f1421b5

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setHeaderText(Landroid/widget/LinearLayout;III)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->isDimState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move p2, p3

    :cond_2
    const v0, 0x7f0a0272

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    const p2, 0x7f0a0273

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    const p2, 0x7f0a0271

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setBatteryLevel(Landroid/widget/LinearLayout;II)V

    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0886

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsInCase:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutGone()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a071b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f0a071c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    const v4, 0x7f0a071a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    const v1, 0x7f0a0719

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a071d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0718

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x72

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getHeaderCaseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    const v1, 0x7f0a0726

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0727

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0724

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x3ee66666    # 0.45f

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1421b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1421b7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1421b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v1, 0x7f0a0272

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0273

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0271

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f080385

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->getDeviceIconIndex()I

    move-result v0

    if-eqz v0, :cond_e

    const v2, 0x7f0806df

    if-ne v0, v2, :cond_d

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080391

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08038c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_0
    return-void
.end method

.method private updateSubLayout()V
    .locals 10

    const-string v0, "batteryL = "

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0886

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v4

    aget-byte v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v5

    aget-byte v5, v5, v3

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v7, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v6

    aget-byte v6, v6, v3

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v8, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_CRADLE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v8}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v7

    aget-byte v7, v7, v3

    const-string v8, "SecAdvancedBtHeaderCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", batteryR = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", batteryC = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq v1, v3, :cond_1

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsInCase:Z

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    sub-int v8, v5, v6

    if-gez v8, :cond_2

    sub-int v8, v6, v5

    :cond_2
    const/16 v9, 0xf

    if-ge v8, v9, :cond_4

    if-eqz v1, :cond_4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsSingleBattery:Z

    if-eqz v0, :cond_7

    if-le v5, v6, :cond_5

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0894

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0892

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_7
    const/4 v0, -0x1

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0891

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutGone()V

    if-ltz v0, :cond_9

    move v5, v0

    :cond_9
    invoke-direct {p0, v1, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->setLayoutResource(Landroid/widget/LinearLayout;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

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

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    const-string v0, "SecAdvancedBtHeaderCtrl"

    const-string v1, "Attri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1421dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140707

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->updateSubLayout()V

    :cond_6
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

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

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    const/4 p0, 0x0

    return p0
.end method
