.class public Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/inputmethod/TouchPadGestureSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const-string p0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170202

    return p0
.end method
