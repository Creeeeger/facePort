.class public Lcom/android/settings/development/qstile/DevelopmentTiles$CustomBugreport;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomBugreport"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 2

    .line 500
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$CustomBugreport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_custom_bugreport_writer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onCreate()V
    .locals 1

    .line 494
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 495
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$CustomBugreport;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setIsEnabled(Z)V
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$CustomBugreport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_custom_bugreport_writer"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
