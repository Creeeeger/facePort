.class public Lcom/android/settings/development/qstile/DevelopmentTiles$GPUProfiling;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    const-string p0, "debug.hwui.profile"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "visual_bars"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setIsEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "visual_bars"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string p1, "debug.hwui.profile"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
