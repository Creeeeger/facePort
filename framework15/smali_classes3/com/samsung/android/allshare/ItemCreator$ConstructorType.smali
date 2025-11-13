.class final enum Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
.super Ljava/lang/Enum;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConstructorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum blacklist LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum blacklist MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field public static final enum blacklist WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 4

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v2, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "MEDIA_SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "WEB_CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "LOCAL_CONTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    :cond_0
    const-string v0, "LOCAL_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    :cond_1
    const-string v0, "MEDIA_SERVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    :cond_3
    const-string v0, "WEB_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    return-object v0
.end method
