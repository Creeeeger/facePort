.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source "Nat512.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .locals 16

    move-object/from16 v6, p2

    invoke-static/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    const/16 v3, 0x8

    const/16 v5, 0x10

    const/16 v1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([II[II[II)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {v6, v0, v6, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v6, v3, v6, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x18

    invoke-static {v6, v5, v6, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v7

    add-int/2addr v2, v7

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x8

    move-object/from16 v7, p0

    move-object/from16 v9, p0

    move-object v11, v13

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v15

    move-object/from16 v7, p1

    move-object/from16 v9, p1

    move-object v11, v14

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v7

    if-eq v15, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v8

    invoke-static {v13, v14, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    if-eqz v7, :cond_1

    invoke-static {v1, v8, v3, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v1, v8, v3, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    const/16 v0, 0x20

    invoke-static {v0, v2, v6, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 13

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([II[II)V

    invoke-static {p1, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x18

    invoke-static {p1, v5, p1, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v6

    add-int/2addr v2, v6

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object v6, p0

    move-object v8, p0

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v1, v6, v3, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v2, v0

    const/16 v0, 0x20

    invoke-static {v0, v2, p1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method
