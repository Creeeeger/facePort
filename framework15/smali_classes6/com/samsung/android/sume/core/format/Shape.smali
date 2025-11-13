.class public interface abstract Lcom/samsung/android/sume/core/format/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sume/core/format/Copyable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/format/Shape$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/format/Shape;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sume/core/format/Shape;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist TYPE_NHWC:I = 0x2

.field public static final blacklist TYPE_NONE:I = 0x0

.field public static final blacklist TYPE_NWHC:I = 0x1


# direct methods
.method public static blacklist mutableOf()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v0}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/format/StapleMutableShape;-><init>(IIII)V

    return-object v0
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(II)Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, p0, p1, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(IIII)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(IIII)Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sume/core/format/Shape;->mutableOf(IIII)Lcom/samsung/android/sume/core/format/MutableShape;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public static blacklist rectOf(II)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static blacklist rectOf(IIII)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getBatch()I
.end method

.method public abstract blacklist getChannels()I
.end method

.method public abstract blacklist getCols()I
.end method

.method public abstract blacklist getDimension()I
.end method

.method public abstract blacklist getRows()I
.end method

.method public abstract blacklist getTotal()I
.end method

.method public blacklist isEmpty()Z
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/Shape;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract blacklist toArray(I)[I
.end method

.method public abstract blacklist toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableShape;",
            ">()TV;"
        }
    .end annotation
.end method
