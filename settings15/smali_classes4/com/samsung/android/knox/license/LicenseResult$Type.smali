.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Type;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;


# instance fields
.field status:I


# direct methods
.method public static synthetic $r8$lambda$F4FpYoOlOtAYpawoTWRqVZnnkcI(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->lambda$fromKlmStatus$1(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W_BM8q6O4oDpfoL__7qenahjRsM(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->lambda$fromElmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v2, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_ACTIVATION"

    const/4 v2, 0x0

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_VALIDATION"

    const/4 v2, 0x1

    const/16 v4, 0x321

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_DEACTIVATION"

    const/4 v2, 0x2

    const/16 v5, 0x322

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_ACTIVATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_VALIDATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_DEACTIVATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v1, 0x6

    const/16 v2, -0x64

    const-string v3, "UNDEFINED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->$values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    return-void
.end method

.method public static fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method public static fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method private static synthetic lambda$fromElmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 1

    iget v0, p1, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ELM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$fromKlmStatus$1(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .locals 1

    iget v0, p1, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KLM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method
