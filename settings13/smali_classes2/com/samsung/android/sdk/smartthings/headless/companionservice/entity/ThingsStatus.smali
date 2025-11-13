.class public final enum Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;
.super Ljava/lang/Enum;
.source "ThingsStatus.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

.field public static final enum CONNECTED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

.field public static final enum DISCONNECTED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

.field public static final enum IDLE:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

.field public static final enum ONBOARDED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->CONNECTED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    .line 12
    new-instance v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->DISCONNECTED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    .line 14
    new-instance v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const-string v5, "IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->IDLE:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    .line 16
    new-instance v5, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const-string v7, "ONBOARDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->ONBOARDED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    .line 18
    new-instance v7, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 8
    sput-object v9, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->$VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->$VALUES:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    return-object v0
.end method
