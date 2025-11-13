.class public Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;
.super Ljava/lang/Object;
.source "DeviceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/DeviceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final blacklist DELIMITER:Ljava/lang/String; = "+"


# instance fields
.field private blacklist mInterface:Ljava/lang/String;

.field private blacklist mUUID:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static blacklist parseSeedString(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;
    .locals 5
    .param p0, "seedString"    # Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "+"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 99
    .local v1, "count":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 101
    const/4 v2, 0x0

    return-object v2

    .line 105
    :cond_0
    const-string v2, ""

    .line 107
    .local v2, "uuid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_1
    const-string v3, ""

    .line 115
    .local v3, "netInterface":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 121
    :cond_2
    new-instance v4, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;

    invoke-direct {v4}, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;-><init>()V

    .line 123
    .local v4, "seed":Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;
    iput-object v2, v4, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    .line 125
    iput-object v3, v4, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    .line 129
    return-object v4
.end method


# virtual methods
.method public blacklist getInterface()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUUID()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/DeviceExtractor$Seed;->mUUID:Ljava/lang/String;

    return-object v0
.end method
