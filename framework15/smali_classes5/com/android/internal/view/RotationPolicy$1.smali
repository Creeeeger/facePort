.class Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$caller:Ljava/lang/String;

.field final synthetic blacklist val$enabled:Z

.field final synthetic blacklist val$rotation:I


# direct methods
.method constructor blacklist <init>(ZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    iput-object p3, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    iget-object v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->freezeRotation(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->thawRotation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "RotationPolicy"

    const-string v2, "Unable to save auto-rotate setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
