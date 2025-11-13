.class Landroid/provider/DeviceConfig$1;
.super Landroid/database/ContentObserver;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1128
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1131
    if-eqz p2, :cond_0

    .line 1132
    invoke-static {p2}, Landroid/provider/DeviceConfig;->-$$Nest$smhandleChange(Landroid/net/Uri;)V

    .line 1134
    :cond_0
    return-void
.end method
