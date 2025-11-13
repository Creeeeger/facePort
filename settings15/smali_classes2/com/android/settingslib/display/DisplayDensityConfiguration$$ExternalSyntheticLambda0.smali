.class public final synthetic Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$0:I

    iput p1, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$1:I

    iput p2, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;->f$2:I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v0, v1, p0}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityConfig"

    const-string v0, "Unable to save forced display density setting"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
