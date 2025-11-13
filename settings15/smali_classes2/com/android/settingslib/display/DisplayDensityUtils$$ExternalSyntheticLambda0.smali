.class public final synthetic Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/display/DisplayDensityUtils;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

    iput p2, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/display/DisplayDensityUtils;

    iget v1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "DisplayDensityUtils"

    :try_start_0
    iget-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v4, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    new-instance v8, Landroid/view/DisplayInfo;

    invoke-direct {v8}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "Unable to save forced display density setting for display "

    if-nez v6, :cond_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mPredicate:Ljava/util/function/Predicate;

    invoke-interface {v6, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValuesPerDisplay:Ljava/util/Map;

    iget-object v10, v8, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    iget-object v9, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValuesPerDisplay:Ljava/util/Map;

    iget-object v8, v8, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v1

    invoke-interface {v6, v7, v8, p0}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Unable to save forced display density setting"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
