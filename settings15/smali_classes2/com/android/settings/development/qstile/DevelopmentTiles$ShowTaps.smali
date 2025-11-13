.class public Lcom/android/settings/development/qstile/DevelopmentTiles$ShowTaps;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$ShowTaps;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_touches"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$ShowTaps;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setIsEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$ShowTaps;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_touches"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
