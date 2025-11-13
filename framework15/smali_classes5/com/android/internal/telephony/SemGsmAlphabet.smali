.class public Lcom/android/internal/telephony/SemGsmAlphabet;
.super Ljava/lang/Object;
.source "SemGsmAlphabet.java"


# static fields
.field private static final blacklist charToGsm:Landroid/util/SparseIntArray;

.field private static final blacklist charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final blacklist gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final blacklist gsmToChar:Landroid/util/SparseIntArray;

.field private static blacklist sGsmSpaceChar:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 14

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x40

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xa3

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x24

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xa5

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xe8

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xe9

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xf9

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xec

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xf2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xc7

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0xd8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0xf8

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0xc5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0xe5

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x394

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x5f

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x3a6

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x393

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x39b

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x3a9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x3a0

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x3a8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x3a3

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x398

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x39e

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const v5, 0xffff

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0xc6

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0xe6

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0xdf

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0xc9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x20

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v6, 0x21

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v6, 0x22

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v6, 0x23

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v6, 0xa4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v6, 0x25

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v6, 0x26

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v6, 0x27

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v6, 0x28

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v7, 0x29

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v8, 0x2a

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v8, 0x2b

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v8, 0x2c

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v8, 0x2d

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v8, 0x2e

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v8, 0x2f

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x30

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x31

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x32

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x33

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x34

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x35

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x36

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x37

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x38

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x39

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x3a

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v9, 0x3b

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v9, 0x3c

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v10, 0x3d

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v11, 0x3e

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x3f

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0xa1

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x41

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x42

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x43

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x44

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x45

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x46

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x47

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x48

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x49

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x4a

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x4b

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x4c

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x4d

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x4e

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x4f

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x50

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x51

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x52

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x53

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x54

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x55

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x56

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x57

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x58

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x59

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x5a

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xc4

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0xd6

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xd1

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0xdc

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xa7

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0xbf

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x61

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x62

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x63

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x64

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0x65

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x66

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x67

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x68

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x69

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x6a

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x6b

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x6c

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x6d

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x6e

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x6f

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x70

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x71

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x72

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x73

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x74

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x75

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x76

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x77

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x78

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0x79

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0x7a

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0xe4

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0xf6

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0xf1

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0xfc

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    const/16 v13, 0xe0

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x5e

    const/16 v4, 0x14

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x7e

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v2, 0x20ac

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    sget-object v6, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    sget-object v6, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SemGsmAlphabet;->sGsmSpaceChar:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertEachCharacter(C)C
    .locals 3

    move v0, p0

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/SemGsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method private static blacklist convertNonGSMCharacter(C)C
    .locals 4

    move v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    :sswitch_0
    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_1
    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_2
    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_3
    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_4
    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_5
    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_6
    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_7
    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_8
    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_9
    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_a
    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_b
    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_d
    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_e
    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_f
    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_10
    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_11
    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_14
    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_15
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_16
    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_17
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_18
    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_19
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_1a
    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_1b
    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_1c
    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_1d
    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_1e
    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_1f
    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_20
    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_21
    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_22
    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_23
    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_24
    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_25
    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_26
    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_27
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_28
    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_29
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_2a
    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_2b
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_2c
    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_2d
    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_2e
    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_2f
    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_30
    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_31
    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_32
    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_33
    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_34
    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_35
    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_36
    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_37
    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_38
    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_39
    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_3a
    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_3b
    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_3c
    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_3d
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_3e
    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_3f
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_40
    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_41
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_42
    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_43
    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_44
    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_45
    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_46
    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_47
    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_48
    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_49
    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_4a
    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_4b
    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_4c
    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_4d
    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_4e
    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_4f
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_50
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_51
    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_52
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_53
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_54
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_55
    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_56
    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_57
    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_58
    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_59
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_5a
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_5b
    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_5c
    const/16 v0, 0x63

    goto :goto_1

    :sswitch_5d
    const/16 v0, 0x61

    goto :goto_1

    :sswitch_5e
    const/16 v0, 0x61

    goto :goto_1

    :sswitch_5f
    const/16 v0, 0x61

    goto :goto_1

    :sswitch_60
    const/16 v0, 0x59

    goto :goto_1

    :sswitch_61
    const/16 v0, 0x55

    goto :goto_1

    :sswitch_62
    const/16 v0, 0x55

    goto :goto_1

    :sswitch_63
    const/16 v0, 0x55

    goto :goto_1

    :sswitch_64
    const/16 v0, 0x4f

    goto :goto_1

    :sswitch_65
    const/16 v0, 0x4f

    goto :goto_1

    :sswitch_66
    const/16 v0, 0x4f

    goto :goto_1

    :sswitch_67
    const/16 v0, 0x4f

    goto :goto_1

    :sswitch_68
    const/16 v0, 0x49

    goto :goto_1

    :sswitch_69
    const/16 v0, 0x49

    goto :goto_1

    :sswitch_6a
    const/16 v0, 0x49

    goto :goto_1

    :sswitch_6b
    const/16 v0, 0x49

    goto :goto_1

    :sswitch_6c
    const/16 v0, 0x45

    goto :goto_1

    :sswitch_6d
    const/16 v0, 0x45

    goto :goto_1

    :sswitch_6e
    const/16 v0, 0x45

    goto :goto_1

    :sswitch_6f
    const/16 v0, 0x41

    goto :goto_1

    :sswitch_70
    const/16 v0, 0x41

    goto :goto_1

    :sswitch_71
    const/16 v0, 0x41

    goto :goto_1

    :sswitch_72
    const/16 v0, 0x41

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const v0, 0xfeff

    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_72
        0xc1 -> :sswitch_71
        0xc2 -> :sswitch_70
        0xc3 -> :sswitch_6f
        0xc8 -> :sswitch_6e
        0xca -> :sswitch_6d
        0xcb -> :sswitch_6c
        0xcc -> :sswitch_6b
        0xcd -> :sswitch_6a
        0xce -> :sswitch_69
        0xcf -> :sswitch_68
        0xd2 -> :sswitch_67
        0xd3 -> :sswitch_66
        0xd4 -> :sswitch_65
        0xd5 -> :sswitch_64
        0xd9 -> :sswitch_63
        0xda -> :sswitch_62
        0xdb -> :sswitch_61
        0xdd -> :sswitch_60
        0xe1 -> :sswitch_5f
        0xe2 -> :sswitch_5e
        0xe3 -> :sswitch_5d
        0xe7 -> :sswitch_5c
        0xe9 -> :sswitch_5b
        0xea -> :sswitch_5a
        0xeb -> :sswitch_59
        0xed -> :sswitch_58
        0xee -> :sswitch_57
        0xef -> :sswitch_56
        0xf3 -> :sswitch_55
        0xf4 -> :sswitch_54
        0xf5 -> :sswitch_53
        0xf6 -> :sswitch_52
        0xfa -> :sswitch_51
        0xfb -> :sswitch_50
        0xfc -> :sswitch_4f
        0xfd -> :sswitch_4e
        0xff -> :sswitch_4d
        0x100 -> :sswitch_4c
        0x101 -> :sswitch_4b
        0x104 -> :sswitch_4a
        0x105 -> :sswitch_49
        0x106 -> :sswitch_48
        0x107 -> :sswitch_47
        0x10c -> :sswitch_46
        0x10d -> :sswitch_45
        0x10e -> :sswitch_44
        0x10f -> :sswitch_43
        0x112 -> :sswitch_42
        0x113 -> :sswitch_41
        0x118 -> :sswitch_40
        0x119 -> :sswitch_3f
        0x11a -> :sswitch_3e
        0x11b -> :sswitch_3d
        0x11e -> :sswitch_3c
        0x11f -> :sswitch_3b
        0x12a -> :sswitch_3a
        0x12b -> :sswitch_39
        0x130 -> :sswitch_38
        0x131 -> :sswitch_37
        0x139 -> :sswitch_36
        0x13a -> :sswitch_35
        0x13d -> :sswitch_34
        0x13e -> :sswitch_33
        0x141 -> :sswitch_32
        0x142 -> :sswitch_31
        0x143 -> :sswitch_30
        0x144 -> :sswitch_2f
        0x147 -> :sswitch_2e
        0x148 -> :sswitch_2d
        0x14c -> :sswitch_2c
        0x14d -> :sswitch_2b
        0x150 -> :sswitch_2a
        0x151 -> :sswitch_29
        0x152 -> :sswitch_28
        0x153 -> :sswitch_27
        0x154 -> :sswitch_26
        0x155 -> :sswitch_25
        0x158 -> :sswitch_24
        0x159 -> :sswitch_23
        0x15a -> :sswitch_22
        0x15b -> :sswitch_21
        0x15e -> :sswitch_20
        0x15f -> :sswitch_1f
        0x160 -> :sswitch_1e
        0x161 -> :sswitch_1d
        0x164 -> :sswitch_1c
        0x165 -> :sswitch_1b
        0x16a -> :sswitch_1a
        0x16b -> :sswitch_19
        0x16e -> :sswitch_18
        0x16f -> :sswitch_17
        0x170 -> :sswitch_16
        0x171 -> :sswitch_15
        0x178 -> :sswitch_14
        0x179 -> :sswitch_13
        0x17a -> :sswitch_12
        0x17b -> :sswitch_11
        0x17c -> :sswitch_10
        0x17d -> :sswitch_f
        0x17e -> :sswitch_e
        0x391 -> :sswitch_d
        0x392 -> :sswitch_c
        0x395 -> :sswitch_b
        0x396 -> :sswitch_a
        0x397 -> :sswitch_9
        0x399 -> :sswitch_8
        0x39a -> :sswitch_7
        0x39c -> :sswitch_6
        0x39d -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a1 -> :sswitch_3
        0x3a4 -> :sswitch_2
        0x3a5 -> :sswitch_1
        0x3a7 -> :sswitch_0
    .end sparse-switch
.end method
