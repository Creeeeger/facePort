.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist arrayChangePos([Ljava/lang/Object;II)V
    .locals 5

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    if-le p1, p2, :cond_1

    add-int/lit8 v1, p2, 0x1

    move v2, p1

    :goto_0
    if-le v2, v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-object v0, p0, v3

    add-int/lit8 v3, v2, -0x1

    aget-object v4, p0, v2

    aput-object v4, p0, v3

    aput-object v0, p0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    if-ge p1, p2, :cond_2

    add-int/lit8 v1, p2, -0x1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget-object v0, p0, v3

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v2

    aput-object v4, p0, v3

    aput-object v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    nop

    :cond_3
    return-void
.end method
