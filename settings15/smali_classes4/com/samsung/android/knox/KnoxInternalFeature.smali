.class public Lcom/samsung/android/knox/KnoxInternalFeature;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final KNOX_CONFIG_MDM_VERSION:I

.field public static final KNOX_CONFIG_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    sput v1, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
