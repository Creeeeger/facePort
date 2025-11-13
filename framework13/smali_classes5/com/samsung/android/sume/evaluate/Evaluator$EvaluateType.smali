.class public final enum Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
.super Ljava/lang/Enum;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvaluateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist EQ:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist EXCEPT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist GE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist GT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist LE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist LT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field public static final enum blacklist NE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ANY:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v1, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v3, "EXCEPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->EXCEPT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v3, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v5, "EQ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->EQ:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v5, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v7, "NE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->NE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v7, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v9, "LT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->LT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v9, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v11, "LE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->LE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v11, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v13, "GT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->GT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    new-instance v13, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    const-string v15, "GE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->GE:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 12
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->$VALUES:[Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
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

    .line 12
    const-class v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->$VALUES:[Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    return-object v0
.end method


# virtual methods
.method public blacklist asWord()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$2;->$SwitchMap$com$samsung$android$sume$evaluate$Evaluator$EvaluateType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    const-string v0, "any"

    return-object v0

    .line 23
    :pswitch_0
    const-string v0, "except"

    return-object v0

    .line 22
    :pswitch_1
    const-string v0, "greater or equal"

    return-object v0

    .line 21
    :pswitch_2
    const-string v0, "greater than"

    return-object v0

    .line 20
    :pswitch_3
    const-string v0, "less or equal"

    return-object v0

    .line 19
    :pswitch_4
    const-string v0, "less than"

    return-object v0

    .line 18
    :pswitch_5
    const-string v0, "not equal"

    return-object v0

    .line 17
    :pswitch_6
    const-string v0, "equal"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
