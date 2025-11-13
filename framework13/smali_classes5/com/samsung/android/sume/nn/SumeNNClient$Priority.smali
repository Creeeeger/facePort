.class final enum Lcom/samsung/android/sume/nn/SumeNNClient$Priority;
.super Ljava/lang/Enum;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/nn/SumeNNClient$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

.field public static final enum blacklist DEFAULT:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

.field public static final enum blacklist IO:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

.field public static final enum blacklist MAIN:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 147
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->DEFAULT:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    .line 148
    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    const-string v3, "IO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->IO:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    .line 149
    new-instance v3, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    const-string v5, "MAIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->MAIN:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    .line 146
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->$VALUES:[Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/nn/SumeNNClient$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 146
    const-class v0, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/nn/SumeNNClient$Priority;
    .locals 1

    .line 146
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->$VALUES:[Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    return-object v0
.end method
