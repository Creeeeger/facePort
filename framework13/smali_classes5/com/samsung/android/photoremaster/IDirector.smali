.class public interface abstract Lcom/samsung/android/photoremaster/IDirector;
.super Ljava/lang/Object;
.source "IDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract blacklist deinit()V
.end method

.method public abstract blacklist getIntParam(I)I
.end method

.method public abstract blacklist getStringParam(I)Ljava/lang/String;
.end method

.method public abstract blacklist init(Landroid/content/Context;)V
.end method

.method public abstract blacklist processAestheticScoring()F
.end method

.method public abstract blacklist processImage(II)Z
.end method

.method public abstract blacklist setLongParam(IJ)V
.end method

.method public abstract blacklist setObjectParam(ILjava/lang/Object;)V
.end method

.method public abstract blacklist setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
.end method

.method public abstract blacklist setStringParam(ILjava/lang/String;)V
.end method

.method public abstract blacklist stop()V
.end method
