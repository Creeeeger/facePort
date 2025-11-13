.class public interface abstract Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/DisplayResolutionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayInterface"
.end annotation


# direct methods
.method public static blacklist getDefault(Landroid/os/Handler;)Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Handler;)V

    return-object v1
.end method


# virtual methods
.method public abstract blacklist getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
.end method
