.class public final enum Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public static final enum XOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public static final enum XOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public static final enum XYOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public static final enum XYOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public static final enum Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    const-string v1, "Y"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    const-string v2, "XYOnLTR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    const-string v3, "XYOnRTL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    const-string v4, "XOnLTR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    new-instance v4, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    const-string v5, "XOnRTL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->$VALUES:[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;
    .locals 1

    const-class v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;
    .locals 1

    sget-object v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->$VALUES:[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    return-object v0
.end method
