.class public final enum Lcom/samsung/android/allshare/Item$ContentBuildType;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentBuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$ContentBuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Item$ContentBuildType;

.field public static final enum blacklist LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

.field public static final enum blacklist PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

.field public static final enum blacklist WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 172
    new-instance v0, Lcom/samsung/android/allshare/Item$ContentBuildType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$ContentBuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    .line 177
    new-instance v1, Lcom/samsung/android/allshare/Item$ContentBuildType;

    const-string v3, "PROVIDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/Item$ContentBuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    .line 179
    new-instance v3, Lcom/samsung/android/allshare/Item$ContentBuildType;

    const-string v5, "WEB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/Item$ContentBuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    .line 181
    new-instance v5, Lcom/samsung/android/allshare/Item$ContentBuildType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/Item$ContentBuildType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    .line 170
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/allshare/Item$ContentBuildType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/allshare/Item$ContentBuildType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentBuildType;

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

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->enumString:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 170
    const-class v0, Lcom/samsung/android/allshare/Item$ContentBuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentBuildType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$ContentBuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$ContentBuildType;->enumString:Ljava/lang/String;

    return-object v0
.end method
