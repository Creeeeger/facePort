.class public interface abstract Lcom/android/internal/vibrator/persistence/XmlSerializer;
.super Ljava/lang/Object;
.source "XmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist serialize(Ljava/lang/Object;)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation
.end method
