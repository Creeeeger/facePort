.class public interface abstract Lcom/samsung/android/knox/SemContainerState$LockListener;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockListener"
.end annotation


# virtual methods
.method public abstract whitelist onAdminLocked(Landroid/content/Context;I)V
.end method

.method public abstract whitelist onAdminUnlocked(Landroid/content/Context;I)V
.end method

.method public abstract whitelist onLicenseActivated(Landroid/content/Context;I)V
.end method

.method public abstract whitelist onLicenseExpired(Landroid/content/Context;I)V
.end method

.method public abstract whitelist onUserLocked(Landroid/content/Context;I)V
.end method

.method public abstract whitelist onUserUnlocked(Landroid/content/Context;I)V
.end method
