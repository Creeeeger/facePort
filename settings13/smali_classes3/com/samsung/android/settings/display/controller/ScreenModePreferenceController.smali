.class public Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "ScreenModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final ACTION_ROUTINE:Ljava/lang/String; = "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

.field private static final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field private static final COLOR_BLIND_URI:Landroid/net/Uri;

.field private static final COLOR_INVERSION:Landroid/net/Uri;

.field private static final COLOR_LENDS_URI:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_MANGED:I = 0x0

.field private static final DISPLAY_COLOR_OEM_VIVID:I = 0x100

.field private static final DISPLAY_COLOR_UNMANGED:I = 0x1

.field private static final GREY_SCALE_URI:Landroid/net/Uri;

.field private static final HIGH_CONTRAST_URI:Landroid/net/Uri;

.field private static final KEY_BLUE:Ljava/lang/String; = "blue"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_GREEN:Ljava/lang/String; = "green"

.field private static final KEY_RED:Ljava/lang/String; = "red"

.field private static final KEY_SCREEN_MODE:Ljava/lang/String; = "screen_mode"

.field private static final KEY_SCREEN_MODE_VALUE:Ljava/lang/String; = "screen_mode_value"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "white_balance"

.field private static final LOCATION_ALLOWED_URI:Landroid/net/Uri;

.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "ScreenModePreferenceController"


# instance fields
.field private mBlueBal:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mEnabled:Z

.field private mGreenBal:I

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mPreferenceEnabled:Z

.field private mRedBal:I

.field private mResult:Ljava/lang/String;

.field private mScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenModeValue:I

.field mSupportNaturalModeWithoutWcgMode:Z

.field mSupportWcgModeOnAmoled:Z

.field private mWhiteBal:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateScreenModeSummary(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->updateScreenModeSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_type"

    .line 84
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string v0, "greyscale_mode"

    .line 85
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    const-string v0, "high_contrast"

    .line 86
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    const-string v0, "color_blind"

    .line 87
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    const-string v0, "color_lens_switch"

    .line 88
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    const-string v0, "location_providers_allowed"

    .line 89
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 90
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_INVERSION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "screen_mode"

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    .line 103
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    .line 104
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    .line 105
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    .line 106
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportWcgModeOnAmoled:Z

    .line 110
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportNaturalModeWithoutWcgMode:Z

    .line 122
    new-instance p1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance p1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$2;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$2;-><init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->ensureBroadcastReceiver()V

    .line 153
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportWcgModeOnAmoled:Z

    .line 154
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportNaturalModeWithoutWcgMode:Z

    .line 155
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "mDNIe"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    .line 103
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    .line 104
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    .line 105
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    .line 106
    iput p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportWcgModeOnAmoled:Z

    .line 110
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportNaturalModeWithoutWcgMode:Z

    .line 122
    new-instance p1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance p1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$2;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$2;-><init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->ensureBroadcastReceiver()V

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportWcgModeOnAmoled:Z

    .line 146
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportNaturalModeWithoutWcgMode:Z

    .line 147
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "mDNIe"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-void
.end method

.method private collectData()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_preset_index"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_green"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_red"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_blue"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mEnabled:Z

    return-void
.end method

.method private ensureBroadcastReceiver()V
    .locals 2

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private isEnabled()Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setDisplayColor(I)V
    .locals 4

    const-string p0, "ScreenModePreferenceController"

    .line 289
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 290
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setDisplayColorToSystemProperties(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set display color to system properties"

    .line 292
    invoke-static {p0, v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "SurfaceFlinger"

    .line 294
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    .line 297
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 300
    :try_start_1
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    const-string v0, "Failed to set display color"

    .line 302
    invoke-static {p0, v0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 304
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw p0

    :cond_0
    :goto_3
    return-void
.end method

.method private setScreenMode(I)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "screen_mode_setting"

    const-string v2, "screen_mode_automatic_setting"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    .line 257
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportWcgModeOnAmoled:Z

    const-string v2, "set Mdnie ScreenMode : "

    const-string v3, "ScreenModePreferenceController"

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string p1, "set Mdnie ScreenMode WCG : 3 to 0"

    .line 265
    invoke-static {v3, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->setDisplayColor(I)V

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 269
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->setDisplayColor(I)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 273
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "set Mdnie ScreenMode to Natural without WCG : 2"

    .line 275
    invoke-static {v3, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 278
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 282
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_1
    return-void
.end method

.method private setScreenModeValues()V
    .locals 3

    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->setScreenMode(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    const-string v2, "sec_display_preset_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    const-string v2, "sec_display_temperature_green"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    const-string v2, "sec_display_temperature_red"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    const-string v1, "sec_display_temperature_blue"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private updateScreenModeState()V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 402
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreferenceEnabled:Z

    .line 403
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 404
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreferenceEnabled:Z

    if-eqz v4, :cond_2

    const-class v4, Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 408
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 409
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->blue_light_disable_reason:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    sget v2, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    .line 411
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 410
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateScreenModeSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 418
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    const-string v3, " / summary :"

    const-string v4, "ScreenModePreferenceController"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v0, :cond_b

    .line 419
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v0

    if-nez v0, :cond_4

    .line 422
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    if-eq v0, v6, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    goto/16 :goto_7

    .line 426
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 430
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 434
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 435
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 437
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_1

    .line 453
    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_reading_mode:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 450
    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 447
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 444
    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_amoled_photo:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 441
    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_premium_movie:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v8, p0

    .line 456
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[1]screenModeController idx :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 460
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    .line 461
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz v0, :cond_13

    if-eq v0, v7, :cond_12

    if-eq v0, v6, :cond_10

    if-eq v0, v1, :cond_f

    if-eq v0, v5, :cond_c

    goto :goto_3

    .line 464
    :cond_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    .line 467
    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 465
    :cond_e
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 484
    :cond_f
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 477
    :cond_10
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 478
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 480
    :cond_11
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 474
    :cond_12
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_amoled_photo:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 471
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_premium_movie:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 487
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[2]screenModeController selectedMode :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 489
    :cond_14
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1c

    if-eqz v0, :cond_1b

    if-eq v0, v7, :cond_1a

    if-eq v0, v6, :cond_18

    if-eq v0, v5, :cond_15

    goto :goto_6

    .line 492
    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_4

    .line 495
    :cond_16
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 493
    :cond_17
    :goto_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 505
    :cond_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 506
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 508
    :cond_19
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 502
    :cond_1a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_photo:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 499
    :cond_1b
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_movie:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    move-object v8, p0

    .line 512
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[3]screenModeController selectedMode :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_7
    return-object v8
.end method

.method private writeJSONData()Z
    .locals 4

    const-string v0, ""

    .line 228
    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mResult:Ljava/lang/String;

    .line 229
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "screen_mode_value"

    .line 231
    iget v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "white_balance"

    .line 232
    iget v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "red"

    .line 233
    iget v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "green"

    .line 234
    iget v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "blue"

    .line 235
    iget v3, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "enabled"

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenModePreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 313
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 386
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 376
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/NewModePreview;

    .line 377
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1079

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "screen_mode"

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->updateScreenModeSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->collectData()V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->writeJSONData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v2

    const-string v3, "screen_mode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getAvailabilityStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 165
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mResult:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x5

    .line 172
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    .line 174
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    .line 176
    :cond_2
    invoke-super {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public onPause()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->ensureBroadcastReceiver()V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$3;-><init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->COLOR_INVERSION:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const-string v1, "ScreenModePreferenceController"

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mResult:Ljava/lang/String;

    .line 186
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mResult:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "screen_mode_value"

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mScreenModeValue:I

    const-string v0, "white_balance"

    .line 188
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mWhiteBal:I

    const-string v0, "red"

    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mRedBal:I

    const-string v0, "green"

    .line 190
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mGreenBal:I

    const-string v0, "blue"

    .line 191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mBlueBal:I

    const-string v0, "enabled"

    .line 192
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->mEnabled:Z

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->setScreenModeValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "screen mode unsupported"

    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 200
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 201
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unsupported_setting_summary:I

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 207
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 328
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->updateScreenModeState()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
