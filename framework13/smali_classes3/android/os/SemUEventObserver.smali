.class public abstract Landroid/os/SemUEventObserver;
.super Ljava/lang/Object;
.source "SemUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SemUEventObserver$SemUEvent;
    }
.end annotation


# instance fields
.field private blacklist mUEO:Landroid/os/UEventObserver;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/SemUEventObserver$1;

    invoke-direct {v0, p0}, Landroid/os/SemUEventObserver$1;-><init>(Landroid/os/SemUEventObserver;)V

    iput-object v0, p0, Landroid/os/SemUEventObserver;->mUEO:Landroid/os/UEventObserver;

    .line 59
    return-void
.end method


# virtual methods
.method public abstract whitelist onSemUEvent(Landroid/os/SemUEventObserver$SemUEvent;)V
.end method

.method public final whitelist startObserving(Ljava/lang/String;)V
    .locals 1
    .param p1, "match"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Landroid/os/SemUEventObserver;->mUEO:Landroid/os/UEventObserver;

    invoke-virtual {v0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final whitelist stopObserving()V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/os/SemUEventObserver;->mUEO:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 97
    return-void
.end method
