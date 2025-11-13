.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "VirtualDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplay$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mToken:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    iput-object p4, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getToken()Landroid/hardware/display/IVirtualDisplayCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    return-object v0
.end method

.method public whitelist release()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    :cond_0
    return-void
.end method

.method public whitelist resize(III)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    return-void
.end method

.method public whitelist semSetRotation(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    return-void
.end method

.method public blacklist setDisplayState(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    :cond_0
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay{display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
