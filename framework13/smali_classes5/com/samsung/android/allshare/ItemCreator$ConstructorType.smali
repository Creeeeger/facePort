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
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v1, "MEDIA_SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 28
    new-instance v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v3, "WEB_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 29
    new-instance v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v5, "LOCAL_CONTENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 30
    new-instance v5, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 26
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 46
    if-nez p0, :cond_0

    .line 47
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 49
    :cond_0
    const-string v0, "LOCAL_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 51
    :cond_1
    const-string v0, "MEDIA_SERVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 53
    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 55
    :cond_3
    const-string v0, "WEB_CONTENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0

    .line 58
    :cond_4
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->$VALUES:[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumString:Ljava/lang/String;

    return-object v0
.end method
