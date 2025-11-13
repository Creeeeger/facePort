.class public Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# static fields
.field private static final BATTERY_RANGE:I = 0xf

.field private static final DEBUG:Z

.field static final INVALID_RESOURCE_ID:I = -0x1

.field static final LEFT_DEVICE_ID:I = 0x5451451

.field static final RIGHT_DEVICE_ID:I = 0xa8a28a2

.field private static final TAG:Ljava/lang/String; = "SecLeAudioHaHeaderCtrl"


# instance fields
.field private hasBatteryService:Z

.field private isBatterySupported:Z

.field private mAllOfCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field mIsRegisterCallback:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$dU5ZxtG1J_fG-fgyOjpHaqVpt6E(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->lambda$onStart$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SecLeAudioHaHeaderCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method private getBatteryProgressResource(I)I
    .locals 2

    const v0, 0x7f0a0704

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0894

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a0705

    if-ne p1, p0, :cond_1

    const p0, 0x7f0a0d5a

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f0a0d59

    return p0
.end method

.method private getBatterySummaryResource(I)I
    .locals 2

    const v0, 0x7f0a0704

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0894

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a0705

    if-ne p1, p0, :cond_1

    const p0, 0x7f0a01b2

    return p0

    :cond_1
    const-string p0, "No summary resource id. The containerId is "

    const-string v0, "SecLeAudioHaHeaderCtrl"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f0a01b1

    return p0
.end method

.method private getBatteryTitleResource(I)I
    .locals 2

    const v0, 0x7f0a0704

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0894

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a0705

    if-ne p1, p0, :cond_1

    const p0, 0x7f0a01b6

    return p0

    :cond_1
    const-string p0, "No summary resource id. The containerId is "

    const-string v0, "SecLeAudioHaHeaderCtrl"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f0a01b5

    return p0
.end method

.method private getHaIconResource(I)I
    .locals 2

    const v0, 0x7f0a0704

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0894

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a0705

    if-ne p1, p0, :cond_1

    const p0, 0x7f0a0d58

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f0a0d57

    return p0
.end method

.method private static synthetic lambda$onStart$0(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private manageBatteryLayout(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setLayoutGone()V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setLayoutGone()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0894

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result p1

    const v2, 0x7f080305

    const v3, 0x7f0a0704

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const-string p1, "SecLeAudioHaHeaderCtrl"

    const-string v0, "The device doesn\'t have Audio Location."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getHaIconResource(I)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryIcon(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatteryTitleResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatterySummaryResource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getHaIconResource(I)I

    move-result p1

    const v0, 0x7f080307

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryIcon(II)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatteryTitleResource(I)I

    move-result p1

    const v0, 0x7f1421b7

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryTitle(II)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getHaIconResource(I)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryIcon(II)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatteryTitleResource(I)I

    move-result p1

    const v0, 0x7f1421b6

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryTitle(II)V

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a088c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private mergeBatteryLayout()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v2, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v3, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v3

    goto :goto_0

    :cond_2
    if-eq v2, v1, :cond_5

    if-eq v3, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "batteryLeft - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "batteryRight - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecLeAudioHaHeaderCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, v2, v3

    if-gez v0, :cond_3

    sub-int v0, v3, v2

    :cond_3
    const/16 v1, 0xf

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setLayoutGone()V

    if-le v2, v3, :cond_4

    move v2, v3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0895

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0704

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateConnectLayout(II)V

    :cond_5
    return-void
.end method

.method private setBatteryArcProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

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

.method private setBatteryIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setBatteryTitle(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setHeaderIcon(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0717

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0d42

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0802fd

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0802ff

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f06056a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f06056b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setLayoutGone()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0894

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a088c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0895

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBatteryLayout()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SecLeAudioHaHeaderCtrl"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "updateBatteryLayout no devices"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget-object v5, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v6

    :goto_2
    const v5, 0x5451451

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const v5, 0xa8a28a2

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    const/4 v6, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v6

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "LeAudioDevices:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", deviceSide:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0a0704

    if-nez v6, :cond_6

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    goto :goto_0

    :cond_6
    if-ne v6, v4, :cond_7

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    const v3, 0x7f0a0705

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    goto :goto_0

    :cond_7
    const-string v4, "The device doesn\'t have Audio Location."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updateBatteryLayout(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateConnectLayout(II)V

    goto :goto_0

    :cond_1
    const-string p0, "SecLeAudioHaHeaderCtrl"

    const-string/jumbo p1, "updateBatteryLayout: Show disconnected battery layout if it doesn\'t have battery information."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateConnectLayout(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatteryProgressResource(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setBatteryArcProgress(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getHaIconResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatteryTitleResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->getBatterySummaryResource(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0d59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0d5a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0d57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0d58

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x72

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01b5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a01b6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x3ee66666    # 0.45f

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01b2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/Utils;->getAllOfCachedBluetoothDevices(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

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
    .locals 0

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/Utils;->getAllOfCachedBluetoothDevices(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->refresh()V

    :cond_2
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->onDeviceAttributesChanged()V

    :cond_1
    return-void
.end method

.method public onResourceUpdated()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BATTERY:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->isBatterySupported:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->hasBatteryService:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isBatterySupported : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->isBatterySupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasBatteryService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->hasBatteryService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecLeAudioHaHeaderCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0d43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0d40

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    const v5, 0x7f1421dd

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setHeaderIcon(Z)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setHeaderIcon(Z)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->setHeaderIcon(Z)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f140707

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->hasBatteryService:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->isBatterySupported:Z

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->manageBatteryLayout(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->updateBatteryLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->mergeBatteryLayout()V

    return-void

    :cond_6
    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->manageBatteryLayout(Z)V

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
