.class public interface abstract Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
.super Ljava/lang/Object;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEventListener"
.end annotation


# virtual methods
.method public abstract blacklist onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg",
            "data",
            "buffer"
        }
    .end annotation
.end method
