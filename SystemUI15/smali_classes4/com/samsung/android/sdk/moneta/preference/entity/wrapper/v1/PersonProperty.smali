.class public final enum Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

.field public static final enum CONTACT_ID:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

.field public static final enum FACE_ID_LIST:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

.field public static final enum NAME:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

.field public static final enum PHONE_NUMBER:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    const/4 v1, 0x0

    const-string v2, "phone_number"

    const-string v3, "PHONE_NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->PHONE_NUMBER:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    new-instance v1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    const/4 v2, 0x1

    const-string v3, "name"

    const-string v4, "NAME"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->NAME:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    new-instance v2, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    const/4 v3, 0x2

    const-string v4, "contact_id"

    const-string v5, "CONTACT_ID"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->CONTACT_ID:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    new-instance v3, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    const/4 v4, 0x3

    const-string v5, "face_id_list"

    const-string v6, "FACE_ID_LIST"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->FACE_ID_LIST:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->key:Ljava/lang/String;

    return-object p0
.end method
