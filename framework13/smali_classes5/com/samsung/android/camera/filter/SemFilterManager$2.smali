.class Lcom/samsung/android/camera/filter/SemFilterManager$2;
.super Landroid/database/ContentObserver;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/camera/filter/SemFilterManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camera/filter/SemFilterManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 178
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 181
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, v0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    .line 193
    :cond_1
    :goto_0
    return-void
.end method
