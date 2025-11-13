.class public interface abstract Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;
.super Ljava/lang/Object;
.source "GLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DebugLevel"
.end annotation


# virtual methods
.method public abstract getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)V
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
