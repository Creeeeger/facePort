.class public final enum Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;
.super Ljava/lang/Enum;
.source "TaProcessBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

.field public static final enum blacklist GET_CERT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

.field public static final enum blacklist RETURN_PLAIN_FACTORY_MODEL_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

.field public static final enum blacklist SET_PROV:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    const-string v1, "RETURN_PLAIN_FACTORY_MODEL_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->RETURN_PLAIN_FACTORY_MODEL_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    .line 16
    new-instance v1, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    const-string v3, "SET_PROV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->SET_PROV:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    .line 17
    new-instance v3, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    const-string v5, "GET_CERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->GET_CERT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    .line 13
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->$VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->$VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->ordinal()I

    move-result v0

    return v0
.end method
