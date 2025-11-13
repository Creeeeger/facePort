.class public final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
.super Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualDisplayCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public greylist-max-o onPaused()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o onResumed()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o onStopped()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
