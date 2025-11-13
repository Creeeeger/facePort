.class public interface abstract Landroid/os/IBinder$DeathRecipient;
.super Ljava/lang/Object;
.source "IBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeathRecipient"
.end annotation


# virtual methods
.method public abstract whitelist binderDied()V
.end method

.method public whitelist binderDied(Landroid/os/IBinder;)V
    .locals 0

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method
