.class public interface abstract Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpNotedInternalListener"
.end annotation


# virtual methods
.method public abstract blacklist onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManager$OnOpNotedInternalListener;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
