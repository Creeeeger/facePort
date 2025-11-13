.class public final enum Lcom/samsung/android/allshare/Caption$CaptionOperation;
.super Ljava/lang/Enum;
.source "Caption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptionOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Caption$CaptionOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum whitelist DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum whitelist ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    const-string v3, "Enable"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 69
    new-instance v1, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const-string v3, "DISABLE"

    const/4 v4, 0x1

    const-string v5, "Disable"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 74
    new-instance v3, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/Caption$CaptionOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 59
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/allshare/Caption$CaptionOperation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/allshare/Caption$CaptionOperation;->$VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumString:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 90
    if-nez p0, :cond_0

    .line 91
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 93
    :cond_0
    const-string v0, "Enable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->ENABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 95
    :cond_1
    const-string v0, "Disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 97
    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0

    .line 100
    :cond_3
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->$VALUES:[Lcom/samsung/android/allshare/Caption$CaptionOperation;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Caption$CaptionOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Caption$CaptionOperation;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumString:Ljava/lang/String;

    return-object v0
.end method
