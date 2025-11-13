.class public interface abstract Landroid/app/AppOpsManager$OnOpChangedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "default:0"

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
