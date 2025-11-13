.class public final Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentIndex:I

.field public mDefaultDensity:I

.field public final mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCurrentWidth()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    return p0
.end method

.method public final isResolutionChangeApplied()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->getCurrentWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolution changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->getCurrentWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenResolution"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iget p1, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    iget v0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mDefaultDensity:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->isResolutionChangeApplied()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    array-length v1, v0

    iget v2, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mCurrentIndex:I

    if-gt v1, v2, :cond_3

    iget v1, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iput v1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mCurrentIndex:I

    :cond_3
    iget v1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mCurrentIndex:I

    aget v0, v0, v1

    iget v2, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    if-eq v0, v2, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/display/DisplayDensityUtils;II)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget p1, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    iput p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mDefaultDensity:I

    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :goto_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
