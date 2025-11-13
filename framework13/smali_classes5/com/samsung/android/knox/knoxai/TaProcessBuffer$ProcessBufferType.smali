.class public final enum Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;
.super Ljava/lang/Enum;
.source "TaProcessBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist DEFAULT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist ENCRYPTED_KEY_BLOB:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist ENCRYPTED_MODEL_ROOT_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist OUTPUT_RESULT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist WRAPPED_DEK:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist WRAPPED_DRK_CERT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

.field public static final enum blacklist WRAPPED_DRK_SERVICE_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 26
    new-instance v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v1, "ENCRYPTED_MODEL_ROOT_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->ENCRYPTED_MODEL_ROOT_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 27
    new-instance v1, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v3, "WRAPPED_DEK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->WRAPPED_DEK:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 28
    new-instance v3, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v5, "WRAPPED_DRK_CERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->WRAPPED_DRK_CERT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 29
    new-instance v5, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v7, "ENCRYPTED_KEY_BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->ENCRYPTED_KEY_BLOB:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 30
    new-instance v7, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v9, "WRAPPED_DRK_SERVICE_KEY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->WRAPPED_DRK_SERVICE_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 31
    new-instance v9, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v11, "OUTPUT_RESULT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->OUTPUT_RESULT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 32
    new-instance v11, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    const-string v13, "DEFAULT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->DEFAULT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    .line 24
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->$VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->$VALUES:[Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->ordinal()I

    move-result v0

    return v0
.end method
