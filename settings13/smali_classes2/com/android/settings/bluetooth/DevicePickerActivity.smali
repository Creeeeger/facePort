.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DevicePickerActivity.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static canLaunchQuickBtView:Z = false

.field public static mMyPlacesCalled:Z = false


# instance fields
.field fromHelp:Z

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBTEnableDisplayed:Z

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mInitiateScan:Z

.field private mIsDisabledAppBar:Z

.field private mIsExpandedAppBar:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsDisabledAppBar:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsExpandedAppBar:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method private getScreenHeightDp()I
    .locals 2

    .line 325
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 326
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 327
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 329
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private measureContentFrame()V
    .locals 6

    .line 281
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 282
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_settings_side_width_ratio:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 283
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 285
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 286
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$dimen;->sec_settings_content_width_ratio:I

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 287
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 290
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x320

    if-lt v3, v4, :cond_0

    .line 291
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getScreenHeightDp()I

    move-result v2

    if-le v3, v2, :cond_0

    .line 295
    invoke-static {p0}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 300
    :cond_0
    sget v2, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 301
    sget v3, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 302
    sget v4, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 311
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 312
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 318
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureContentFrame : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DevicePickerActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 1

    .line 248
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged :: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 258
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->measureContentFrame()V

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 113
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate :: mInitiateScan : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DevicePickerActivity"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "onCreate :: Intent.getAction() is return null"

    .line 118
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate :: getAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.settings.bluetooth.CheckBluetoothLEStateActivity"

    .line 124
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_1

    :cond_2
    const-string v3, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    sput-boolean v1, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    .line 130
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_4

    const-string p0, "Bluetooth is not supported on this device"

    .line 132
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 136
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 139
    :cond_5
    sget p1, Lcom/android/settings/R$layout;->bluetooth_device_picker:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 142
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 143
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 145
    sget p1, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 146
    sget p1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->measureContentFrame()V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "fromHelp"

    .line 152
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    .line 154
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_6

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x2f

    .line 158
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    :cond_6
    const-string/jumbo p1, "ril.domesticOtaStart"

    .line 164
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 238
    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 243
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string p0, "DevicePickerActivity"

    const-string v0, "inside onPause of DevicePickerActivity"

    .line 226
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 227
    sput-boolean p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    const-string v0, "DevicePickerActivity"

    const-string/jumbo v1, "onPostResume"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_1
    const-string v1, "Does not start scanning."

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 173
    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePickerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x1a

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v1, 0x3

    .line 180
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    .line 181
    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v0, "statusbar"

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 186
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 190
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 232
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
