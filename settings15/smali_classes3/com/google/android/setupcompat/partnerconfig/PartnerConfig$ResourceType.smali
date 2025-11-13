.class public final enum Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum STRING_ARRAY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v2, "BOOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v3, "COLOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v4, "DRAWABLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v5, "STRING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v6, "DIMENSION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v7, "FRACTION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v8, "ILLUSTRATION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v9, "STRING_ARRAY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING_ARRAY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    filled-new-array/range {v0 .. v8}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method
