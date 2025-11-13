.class Lcom/samsung/android/multiwindow/MultiWindowManager$1;
.super Landroid/util/Singleton;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/samsung/android/multiwindow/IMultiTaskingBinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;->create()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    return-object v0
.end method
