.class public Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    }
.end annotation


# direct methods
.method public static isAtLeastR()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .locals 1
    .annotation build Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
