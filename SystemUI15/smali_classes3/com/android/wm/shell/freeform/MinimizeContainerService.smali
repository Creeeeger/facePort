.class public Lcom/android/wm/shell/freeform/MinimizeContainerService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sFlipFont:I


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;-><init>(Lcom/android/wm/shell/freeform/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "FreeformContainer"

    const-string v0, "[MinimizeContainerService] onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const v1, -0x7ffecdfc

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const-string v0, "ConfigurationChanged"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->rebuildAll(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[Manager] updateConfigurationChanged: diff=0x"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", No need to rebuild all"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FreeformContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget p0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez p0, :cond_1

    sget v0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->sFlipFont:I

    if-eq v0, p0, :cond_1

    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    iget p0, p1, Landroid/content/res/Configuration;->FlipFont:I

    sput p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->sFlipFont:I

    :cond_1
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[MinimizeContainerService] onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
