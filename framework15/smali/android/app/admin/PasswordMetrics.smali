.class public final Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$ComplexityBucket;,
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_DIGIT:I = 0x2

.field private static final greylist-max-o CHAR_LOWER_CASE:I = 0x0

.field private static final greylist-max-o CHAR_SYMBOL:I = 0x3

.field private static final greylist-max-o CHAR_UPPER_CASE:I = 0x1

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PasswordMetrics"


# instance fields
.field public blacklist credType:I

.field public greylist-max-o length:I

.field public greylist-max-o letters:I

.field public greylist-max-o lowerCase:I

.field public greylist-max-o nonLetter:I

.field public blacklist nonNumeric:I

.field public greylist-max-o numeric:I

.field public blacklist seqLength:I

.field public greylist-max-o symbols:I

.field public greylist-max-o upperCase:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p9, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iput p10, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/PasswordMetrics;)V
    .locals 11

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v5, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v6, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v7, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v8, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v9, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v10, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-void
.end method

.method public static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;
    .locals 1

    invoke-static {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;
    .locals 3

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, p0}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/app/admin/PasswordMetrics;)V

    invoke-virtual {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    :cond_0
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    return-object v0
.end method

.method private static greylist-max-o categoryChar(C)I
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "Landroid/app/admin/PasswordMetrics$ComplexityBucket;",
            "Landroid/app/admin/PasswordMetrics;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;)V"
        }
    .end annotation

    iget v0, p2, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x3

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v0

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-le v0, v2, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-le v0, v2, :cond_1

    iget v2, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v2, v0, :cond_1

    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ge v0, v2, :cond_2

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x7

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ge v0, v2, :cond_3

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x8

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ge v0, v2, :cond_4

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x9

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ge v0, v2, :cond_5

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xa

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ge v0, v2, :cond_6

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xb

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ge v0, v2, :cond_7

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xc

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ge v0, v2, :cond_8

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xd

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-le v0, v2, :cond_9

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static blacklist complexityLevelToMinQuality(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/high16 v0, 0x30000

    return v0

    :sswitch_1
    const/high16 v0, 0x10000

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x30000 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isUCM()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v15, v0

    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-byte v10, v0, v9

    int-to-char v11, v10

    invoke-static {v11}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    nop

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v8, 0x3

    goto :goto_2

    :cond_1
    const/4 v8, 0x4

    :goto_2
    move v9, v8

    invoke-static/range {p0 .. p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v19

    new-instance v20, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v8, v20

    move v10, v15

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move/from16 v21, v15

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-object v20

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isNumericOnly(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o maxDiffCategory(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist maxLengthSequence([B)I
    .locals 12

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-byte v0, p0, v1

    int-to-char v0, v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_4

    aget-byte v7, p0, v6

    int-to-char v7, v7

    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    sub-int v9, v7, v0

    if-ne v8, v1, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    if-eq v9, v2, :cond_2

    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v6, -0x1

    :cond_2
    move v2, v9

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v6

    const/4 v3, 0x0

    move v1, v8

    :goto_2
    move v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public static blacklist merge(Ljava/util/List;)Landroid/app/admin/PasswordMetrics;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;)",
            "Landroid/app/admin/PasswordMetrics;"
        }
    .end annotation

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    invoke-virtual {v0, v2}, Landroid/app/admin/PasswordMetrics;->maxWith(Landroid/app/admin/PasswordMetrics;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist removeOverlapping()V
    .locals 9

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v6, v2, v4

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v8, 0x0

    if-lt v0, v7, :cond_0

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    :cond_0
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lt v1, v7, :cond_1

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    :cond_1
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lt v3, v7, :cond_2

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    :cond_2
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-lt v6, v7, :cond_3

    iput v8, p0, Landroid/app/admin/PasswordMetrics;->length:I

    :cond_3
    return-void
.end method

.method public static blacklist sanitizeComplexityLevel(I)I
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid password complexity used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :sswitch_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z
    .locals 5

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    if-eq v0, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-gt v0, v3, :cond_4

    :cond_2
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    if-lt v0, v2, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    nop

    :goto_1
    return v1
.end method

.method public static blacklist validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->hasInvalidChars()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Landroid/app/admin/PasswordMetrics;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_7

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {v0, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v5, 0x3

    if-ne v1, v4, :cond_2

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-eqz v1, :cond_1

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v1, v2, :cond_1

    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v1, v5, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_2
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_3
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v1, v5, :cond_4

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v1, :cond_4

    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v6, p2, Landroid/app/admin/PasswordMetrics;->length:I

    const/16 v7, 0x100

    if-le v6, v7, :cond_5

    new-instance v6, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v8, 0x5

    invoke-direct {v6, v8, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v6, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v6, v5, :cond_6

    move v3, v4

    :cond_6
    invoke-static {p0, v3, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    iget v4, v3, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-direct {v3}, Landroid/app/admin/PasswordMetrics;->removeOverlapping()V

    invoke-static {v3, v0, p2, v1}, Landroid/app/admin/PasswordMetrics;->comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V

    return-object v1

    :cond_7
    :goto_0
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v1, v4, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist determineComplexity()I
    .locals 5

    invoke-static {}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Landroid/app/admin/PasswordMetrics;->satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v3, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to figure out complexity for a given metrics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist maxWith(Landroid/app/admin/PasswordMetrics;)V
    .locals 2

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
