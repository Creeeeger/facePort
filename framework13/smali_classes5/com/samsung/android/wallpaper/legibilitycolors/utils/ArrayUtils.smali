.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist arrayChangePos([Ljava/lang/Object;II)V
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "src"    # I
    .param p2, "dst"    # I

    .line 5
    aget-object v0, p0, p1

    .line 6
    .local v0, "buf":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 7
    aput-object v0, p0, p2

    .line 8
    if-le p1, p2, :cond_1

    .line 9
    add-int/lit8 v1, p2, 0x1

    .line 10
    .local v1, "size":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 11
    add-int/lit8 v3, v2, -0x1

    aget-object v0, p0, v3

    .line 12
    add-int/lit8 v3, v2, -0x1

    aget-object v4, p0, v2

    aput-object v4, p0, v3

    .line 13
    aput-object v0, p0, v2

    .line 10
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 15
    :cond_1
    if-ge p1, p2, :cond_2

    .line 16
    add-int/lit8 v1, p2, -0x1

    .line 17
    .restart local v1    # "size":I
    move v2, p1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 18
    add-int/lit8 v3, v2, 0x1

    aget-object v0, p0, v3

    .line 19
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v2

    aput-object v4, p0, v3

    .line 20
    aput-object v0, p0, v2

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2
    :goto_2
    nop

    .line 23
    :cond_3
    return-void
.end method
