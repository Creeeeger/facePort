.class public final enum Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSRFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public static final enum PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v2, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string v1, "PKCS10"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string v1, "CRMF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->CRMF:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    const-string v1, "PROPRIETARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-static {}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->$values()[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    return-object v0
.end method
