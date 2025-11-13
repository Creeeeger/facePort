.class public final enum Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum Alpha:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum Scale:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum TransXOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum TransXOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum TransXYOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum TransXYOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final enum TransY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v1, "Alpha"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->Alpha:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v2, "Scale"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->Scale:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v3, "TransY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v4, "TransXYOnLTR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXYOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v5, "TransXYOnRTL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXYOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v5, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v6, "TransXOnLTR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v6, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    const-string v7, "TransXOnRTL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->$VALUES:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;
    .locals 1

    const-class v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;
    .locals 1

    sget-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->$VALUES:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    return-object v0
.end method
