.class public interface abstract Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;
.super Ljava/lang/Object;
.source "PortraitVideoStatusListener.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/NativeInterfaceListener;


# virtual methods
.method public abstract blacklist onPortraitVideoError(I)V
.end method

.method public abstract blacklist onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V
.end method

.method public abstract blacklist onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation
.end method
