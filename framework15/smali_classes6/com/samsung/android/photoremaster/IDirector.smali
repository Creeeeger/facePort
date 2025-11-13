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

.method public abstract blacklist getBitmapParam(I)Landroid/graphics/Bitmap;
.end method

.method public abstract blacklist getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getIntParam(I)I
.end method

.method public abstract blacklist getLongParam(I)J
.end method

.method public abstract blacklist getStringParam(I)Ljava/lang/String;
.end method

.method public abstract blacklist init(Landroid/content/Context;)V
.end method

.method public abstract blacklist processImage(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist setBitmapParam(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract blacklist setLongParam(IJ)V
.end method

.method public abstract blacklist setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
.end method

.method public abstract blacklist setStringParam(ILjava/lang/String;)V
.end method

.method public abstract blacklist setUriParam(ILandroid/net/Uri;)V
.end method

.method public abstract blacklist stop()V
.end method

.method public abstract blacklist tryInit(Landroid/content/Context;)Z
.end method
