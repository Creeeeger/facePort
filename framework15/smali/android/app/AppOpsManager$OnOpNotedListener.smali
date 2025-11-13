.class public interface abstract Landroid/app/AppOpsManager$OnOpNotedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpNotedListener"
.end annotation


# virtual methods
.method public abstract whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 7

    if-nez p5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
