.class public final enum Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public static final enum CMC:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public static final enum CMP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public static final enum PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public static final enum SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->CMP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v2, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->CMC:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v3, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    const-string v1, "SCEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    const-string v1, "CMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->CMP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    const-string v1, "CMC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->CMC:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    const-string v1, "PROPRIETARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-static {}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->$values()[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    return-object v0
.end method
