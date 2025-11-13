.class interface abstract Lcom/samsung/app/video/editor/external/ElementChangeListener;
.super Ljava/lang/Object;
.source "ElementChangeListener.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract blacklist onDurationChange(I)V
.end method

.method public abstract blacklist onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V
.end method

.method public abstract blacklist onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V
.end method

.method public abstract blacklist speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
.end method

.method public abstract blacklist speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
.end method
