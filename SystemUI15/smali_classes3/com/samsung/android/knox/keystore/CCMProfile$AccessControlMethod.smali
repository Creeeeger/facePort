.class public final enum Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;


# instance fields
.field private value:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v2, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v6, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "LOCK_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "PASSWORD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "TRUSTED_UI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "TRUSTED_PINPAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v1, 0x4

    const/16 v2, 0xf

    const-string v3, "AFW"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v1, 0x5

    const/16 v2, 0x10

    const-string v3, "KNOX_DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v1, 0x6

    const/16 v2, 0x11

    const-string v3, "USER_AUTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

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

    iput p3, p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->value:I

    return p0
.end method
