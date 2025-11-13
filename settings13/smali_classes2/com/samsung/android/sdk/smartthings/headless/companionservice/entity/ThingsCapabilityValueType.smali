.class public final enum Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;
.super Ljava/lang/Enum;
.source "ThingsCapabilityValueType.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum BOOLEAN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum INTEGER:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum JSON_OBJECT:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum STRING:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum STRING_ARRAY:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 27
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->BOOLEAN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 28
    new-instance v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->INTEGER:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 29
    new-instance v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v5, "JSON_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->JSON_OBJECT:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 30
    new-instance v5, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v7, "NUMBER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->NUMBER:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 31
    new-instance v7, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v9, "STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->STRING:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 32
    new-instance v9, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v11, "STRING_ARRAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->STRING_ARRAY:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 33
    new-instance v11, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 25
    sput-object v13, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->$VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;
    .locals 1

    .line 25
    const-class v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->$VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    return-object v0
.end method
