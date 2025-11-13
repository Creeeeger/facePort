.class public abstract Landroid/content/integrity/AtomicFormula;
.super Landroid/content/integrity/IntegrityFormula;
.source "AtomicFormula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$StringAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$LongAtomicFormula;,
        Landroid/content/integrity/AtomicFormula$Operator;,
        Landroid/content/integrity/AtomicFormula$Key;
    }
.end annotation


# static fields
.field public static final blacklist APP_CERTIFICATE:I = 0x1

.field public static final blacklist APP_CERTIFICATE_LINEAGE:I = 0x8

.field public static final blacklist EQ:I = 0x0

.field public static final blacklist GT:I = 0x1

.field public static final blacklist GTE:I = 0x2

.field public static final blacklist INSTALLER_CERTIFICATE:I = 0x3

.field public static final blacklist INSTALLER_NAME:I = 0x2

.field public static final blacklist PACKAGE_NAME:I = 0x0

.field public static final blacklist PRE_INSTALLED:I = 0x5

.field public static final blacklist STAMP_CERTIFICATE_HASH:I = 0x7

.field public static final blacklist STAMP_TRUSTED:I = 0x6

.field public static final blacklist VERSION_CODE:I = 0x4


# instance fields
.field private final blacklist mKey:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula;->isValidKey(I)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unknown key: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/content/integrity/AtomicFormula;->mKey:I

    return-void
.end method

.method private static blacklist isValidKey(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static blacklist keyToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "APP_CERTIFICATE_LINEAGE"

    return-object v0

    :pswitch_1
    const-string v0, "STAMP_CERTIFICATE_HASH"

    return-object v0

    :pswitch_2
    const-string v0, "STAMP_TRUSTED"

    return-object v0

    :pswitch_3
    const-string v0, "PRE_INSTALLED"

    return-object v0

    :pswitch_4
    const-string v0, "VERSION_CODE"

    return-object v0

    :pswitch_5
    const-string v0, "INSTALLER_CERTIFICATE"

    return-object v0

    :pswitch_6
    const-string v0, "INSTALLER_NAME"

    return-object v0

    :pswitch_7
    const-string v0, "APP_CERTIFICATE"

    return-object v0

    :pswitch_8
    const-string v0, "PACKAGE_NAME"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist operatorToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "GTE"

    return-object v0

    :pswitch_1
    const-string v0, "GT"

    return-object v0

    :pswitch_2
    const-string v0, "EQ"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getKey()I
    .locals 1

    iget v0, p0, Landroid/content/integrity/AtomicFormula;->mKey:I

    return v0
.end method
