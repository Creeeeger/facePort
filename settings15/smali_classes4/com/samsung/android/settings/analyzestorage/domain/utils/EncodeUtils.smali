.class public abstract Lcom/samsung/android/settings/analyzestorage/domain/utils/EncodeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEncV2Key:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/domain/utils/EncodeUtils;->sEncV2Key:[[B

    return-void

    :array_0
    .array-data 1
        0x11t
        0x22t
        -0x1t
        -0x21t
    .end array-data

    :array_1
    .array-data 1
        -0x21t
        0x34t
        0x22t
        -0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x73t
        -0x23t
        0x33t
        0x3ft
    .end array-data

    :array_3
    .array-data 1
        -0x36t
        -0x34t
        -0x56t
        -0x7ct
    .end array-data
.end method
