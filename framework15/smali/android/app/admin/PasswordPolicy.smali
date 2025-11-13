.class public Landroid/app/admin/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final blacklist DEF_MINIMUM_LENGTH:I = 0x0

.field public static final blacklist DEF_MINIMUM_LETTERS:I = 0x1

.field public static final blacklist DEF_MINIMUM_LOWER_CASE:I = 0x0

.field public static final blacklist DEF_MINIMUM_NON_LETTER:I = 0x0

.field public static final blacklist DEF_MINIMUM_NUMERIC:I = 0x1

.field public static final blacklist DEF_MINIMUM_SYMBOLS:I = 0x1

.field public static final blacklist DEF_MINIMUM_UPPER_CASE:I


# instance fields
.field public blacklist length:I

.field public blacklist letters:I

.field public blacklist lowerCase:I

.field public blacklist nonLetter:I

.field public blacklist numeric:I

.field public blacklist quality:I

.field public blacklist symbols:I

.field public blacklist upperCase:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->length:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/app/admin/PasswordPolicy;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    iput v1, p0, Landroid/app/admin/PasswordPolicy;->numeric:I

    iput v1, p0, Landroid/app/admin/PasswordPolicy;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    return-void
.end method


# virtual methods
.method public blacklist getMinMetrics()Landroid/app/admin/PasswordMetrics;
    .locals 4

    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_0
    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const v1, 0x8000

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v1, 0x20000

    const/high16 v3, 0x30000

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->length:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v3, 0x40000

    if-ne v1, v3, :cond_3

    iput v2, v0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v3, 0x50000

    if-ne v1, v3, :cond_4

    iput v2, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v2, v0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v2, 0x60000

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->numeric:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->letters:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v1, p0, Landroid/app/admin/PasswordPolicy;->symbols:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    :goto_1
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    iget v2, p0, Landroid/app/admin/PasswordPolicy;->length:I

    iput v2, v0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-ne v2, v3, :cond_7

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, v2}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0
.end method
