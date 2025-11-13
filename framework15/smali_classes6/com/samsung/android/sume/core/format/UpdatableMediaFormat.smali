.class public interface abstract Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
.super Ljava/lang/Object;
.source "UpdatableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/format/UpdatableMediaFormat$UpdatableAttribute;
    }
.end annotation


# static fields
.field public static final blacklist UPDATE_AT_ALLOC:Ljava/lang/String; = "update-at-alloc"


# direct methods
.method public static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;
.end method

.method public abstract blacklist set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
.end method

.method public abstract blacklist setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;"
        }
    .end annotation
.end method

.method public abstract blacklist update()Lcom/samsung/android/sume/core/format/MediaFormat;
.end method

.method public abstract blacklist with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
.end method
