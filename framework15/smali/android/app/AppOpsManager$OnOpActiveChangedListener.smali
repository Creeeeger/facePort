.class public interface abstract Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpActiveChangedListener"
.end annotation


# virtual methods
.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 8

    if-nez p5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p5}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public abstract whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
.end method
