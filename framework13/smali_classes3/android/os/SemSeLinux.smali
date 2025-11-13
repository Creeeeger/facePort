.class public final Landroid/os/SemSeLinux;
.super Ljava/lang/Object;
.source "SemSeLinux.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static blacklist isEnforced()Z
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    return v0
.end method
