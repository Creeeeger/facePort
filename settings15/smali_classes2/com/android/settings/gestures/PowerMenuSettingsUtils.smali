.class public final Lcom/android/settings/gestures/PowerMenuSettingsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final POWER_BUTTON_LONG_PRESS_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsObserver:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "power_button_long_press"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->POWER_BUTTON_LONG_PRESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;

    return-void
.end method

.method public static isLongPressPowerForAssistantEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e00d0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string v1, "power_button_long_press"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLongPressPowerSettingAvailable(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00d0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public final registerObserver(Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;

    iput-object p1, v0, Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;->mCallback:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;

    iget-object p0, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->POWER_BUTTON_LONG_PRESS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
