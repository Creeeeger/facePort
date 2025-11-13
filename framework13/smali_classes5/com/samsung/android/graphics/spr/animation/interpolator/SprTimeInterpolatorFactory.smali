.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;
.super Ljava/lang/Object;
.source "SprTimeInterpolatorFactory.java"


# static fields
.field private static blacklist mTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(IIII)Landroid/animation/TimeInterpolator;
    .locals 3
    .param p0, "animationMode"    # I
    .param p1, "duration"    # I
    .param p2, "type"    # I
    .param p3, "quotient"    # I

    .line 11
    sget-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    .line 15
    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    sub-int v1, p1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;

    .line 17
    .local v0, "item":Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;
    if-nez v0, :cond_1

    .line 18
    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;-><init>(III)V

    move-object v0, v1

    .line 19
    sget-object v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    sub-int v2, p1, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    return-object v0
.end method
