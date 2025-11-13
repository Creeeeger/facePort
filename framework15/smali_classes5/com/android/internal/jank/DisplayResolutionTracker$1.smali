.class Lcom/android/internal/jank/DisplayResolutionTracker$1;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/DisplayResolutionTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-static {v0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;->-$$Nest$mupdateDisplay(Lcom/android/internal/jank/DisplayResolutionTracker;I)V

    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-static {v0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;->-$$Nest$mupdateDisplay(Lcom/android/internal/jank/DisplayResolutionTracker;I)V

    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
