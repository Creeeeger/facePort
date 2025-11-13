.class public final enum Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
.super Ljava/lang/Enum;
.source "XmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/XmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveEffectName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist CLICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist LOW_TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist QUICK_FALL:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist QUICK_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist SLOW_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist SPIN:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist THUD:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

.field public static final enum blacklist TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;


# instance fields
.field private final blacklist mPrimitiveId:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 8

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->LOW_TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v2, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->CLICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v3, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->SLOW_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->QUICK_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v5, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->QUICK_FALL:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v6, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->SPIN:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    sget-object v7, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->THUD:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "LOW_TICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->LOW_TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "TICK"

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->TICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "CLICK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->CLICK:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "SLOW_RISE"

    const/4 v2, 0x3

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->SLOW_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "QUICK_RISE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->QUICK_RISE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "QUICK_FALL"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->QUICK_FALL:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "SPIN"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->SPIN:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    const-string v1, "THUD"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->THUD:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->$values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->mPrimitiveId:I

    return-void
.end method

.method public static blacklist findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 5

    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->mPrimitiveId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 2

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;
    .locals 1

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    invoke-virtual {v0}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    return-object v0
.end method


# virtual methods
.method public blacklist getPrimitiveId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->mPrimitiveId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
