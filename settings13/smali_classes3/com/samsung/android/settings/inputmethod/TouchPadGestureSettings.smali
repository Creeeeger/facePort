.class public Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "TouchPadGestureSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CALL_METHOD_GET:Ljava/lang/String;

.field private final CONTENT_URI:Landroid/net/Uri;

.field private final KEY_TAP_WITH_3_FINGERS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const-string v0, "key_tap_with_3_fingers"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;->KEY_TAP_WITH_3_FINGERS:Ljava/lang/String;

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "getSettings"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;->CALL_METHOD_GET:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 39
    sget p0, Lcom/android/settings/R$xml;->sec_touchpad_gesture_settings:I

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    return-void
.end method
