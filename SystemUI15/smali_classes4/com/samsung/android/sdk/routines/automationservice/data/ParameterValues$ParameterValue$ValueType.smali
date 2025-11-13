.class public final enum Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

.field public static final enum LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->UNKNOWN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const-string v3, "NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const-string v4, "STRING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v4, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const/4 v5, 0x4

    const-string v6, "LIST{BOOLEAN}"

    const-string v7, "LIST_BOOLEAN"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v5, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const/4 v6, 0x5

    const-string v7, "LIST{NUMBER}"

    const-string v8, "LIST_NUMBER"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    new-instance v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const/4 v7, 0x6

    const-string v8, "LIST{STRING}"

    const-string v9, "LIST_STRING"

    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->$VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->$VALUES:[Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-object v0
.end method


# virtual methods
.method public final getMName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->mName:Ljava/lang/String;

    return-object p0
.end method
