.class public final Landroidx/core/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityManager"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method
