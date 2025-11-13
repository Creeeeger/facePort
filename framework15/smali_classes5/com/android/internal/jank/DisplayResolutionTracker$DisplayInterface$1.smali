.class Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"

# interfaces
.implements Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;->getDefault(Landroid/os/Handler;)Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$manager:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p2, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$handler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V

    return-void
.end method
