.class public final synthetic Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/display/DisplayDensityUtils;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

    iput p2, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DisplayDensityUtils"

    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v3, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v5, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to clear forced display density setting for display "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mPredicate:Ljava/util/function/Predicate;

    invoke-interface {v5, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5, v6, p0}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Unable to clear forced display density setting"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
