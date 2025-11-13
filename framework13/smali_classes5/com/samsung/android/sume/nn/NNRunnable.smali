.class public interface abstract Lcom/samsung/android/sume/nn/NNRunnable;
.super Ljava/lang/Object;
.source "NNRunnable.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist run(Lcom/samsung/android/sume/MediaBuffer;Lcom/samsung/android/sume/MediaBuffer;Ljava/lang/Runnable;)Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf",
            "runtime"
        }
    .end annotation
.end method
