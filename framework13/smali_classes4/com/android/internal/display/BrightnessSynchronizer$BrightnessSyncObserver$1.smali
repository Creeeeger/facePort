.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    .line 573
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 575
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayChanged() : displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessSynchronizer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-nez p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v0, v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mupdateScreenBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V

    .line 589
    :cond_0
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 578
    return-void
.end method
