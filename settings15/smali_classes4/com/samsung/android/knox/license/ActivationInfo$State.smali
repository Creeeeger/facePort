.class public final enum Lcom/samsung/android/knox/license/ActivationInfo$State;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/ActivationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/ActivationInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

.field public static final enum TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

    sget-object v1, Lcom/samsung/android/knox/license/ActivationInfo$State;->EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    sget-object v2, Lcom/samsung/android/knox/license/ActivationInfo$State;->TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v1, "EXPIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v1, "TERMINATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/license/ActivationInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    invoke-static {}, Lcom/samsung/android/knox/license/ActivationInfo$State;->$values()[Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->$VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

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

.method public static fromInt(I)Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/license/ActivationInfo$State;->TERMINATED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/license/ActivationInfo$State;->EXPIRED:Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/license/ActivationInfo$State;->ACTIVE:Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/ActivationInfo$State;->$VALUES:[Lcom/samsung/android/knox/license/ActivationInfo$State;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/ActivationInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object v0
.end method
