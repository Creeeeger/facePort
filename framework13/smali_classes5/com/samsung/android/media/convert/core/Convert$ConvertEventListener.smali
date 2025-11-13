.class public interface abstract Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConvertEventListener"
.end annotation


# virtual methods
.method public abstract blacklist onCancelled()V
.end method

.method public abstract blacklist onCompleted()V
.end method

.method public abstract blacklist onFailed()V
.end method

.method public abstract blacklist onStarted()V
.end method
