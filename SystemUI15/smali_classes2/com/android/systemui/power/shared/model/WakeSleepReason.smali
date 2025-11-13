.class public final enum Lcom/android/systemui/power/shared/model/WakeSleepReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/power/shared/model/WakeSleepReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum BIOMETRIC:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final Companion:Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;

.field public static final enum FOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum KEY:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum LID:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum LIFT:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum MOTION:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum OTHER:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum POWER_BUTTON:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

.field public static final enum UNFOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;


# instance fields
.field private final isTouch:Z

.field private final powerManagerWakeReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v1, "POWER_BUTTON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v4, "TAP"

    const/16 v5, 0xf

    invoke-direct {v1, v4, v3, v3, v5}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v4, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v5, "GESTURE"

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v4, Lcom/android/systemui/power/shared/model/WakeSleepReason;->GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v3, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v5, "KEY"

    const/4 v6, 0x3

    const/4 v8, 0x6

    invoke-direct {v3, v5, v6, v2, v8}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v3, Lcom/android/systemui/power/shared/model/WakeSleepReason;->KEY:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v5, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v6, "MOTION"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v2, v9}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v5, Lcom/android/systemui/power/shared/model/WakeSleepReason;->MOTION:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v6, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v7, "LID"

    const/4 v10, 0x5

    const/16 v11, 0x9

    invoke-direct {v6, v7, v10, v2, v11}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v6, Lcom/android/systemui/power/shared/model/WakeSleepReason;->LID:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v7, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v10, "UNFOLD"

    const/16 v12, 0xc

    invoke-direct {v7, v10, v8, v2, v12}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v7, Lcom/android/systemui/power/shared/model/WakeSleepReason;->UNFOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v8, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v10, "LIFT"

    const/16 v12, 0x10

    invoke-direct {v8, v10, v9, v2, v12}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v8, Lcom/android/systemui/power/shared/model/WakeSleepReason;->LIFT:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v9, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const/16 v10, 0x8

    const/16 v12, 0x11

    const-string v13, "BIOMETRIC"

    invoke-direct {v9, v13, v10, v2, v12}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v9, Lcom/android/systemui/power/shared/model/WakeSleepReason;->BIOMETRIC:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v10, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const-string v12, "OTHER"

    invoke-direct {v10, v12, v11, v2, v2}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v10, Lcom/android/systemui/power/shared/model/WakeSleepReason;->OTHER:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    new-instance v11, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    const/16 v12, 0xa

    const/16 v13, 0xd

    const-string v14, "FOLD"

    invoke-direct {v11, v14, v12, v2, v13}, Lcom/android/systemui/power/shared/model/WakeSleepReason;-><init>(Ljava/lang/String;IZI)V

    sput-object v11, Lcom/android/systemui/power/shared/model/WakeSleepReason;->FOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    filled-new-array/range {v0 .. v10}, [Lcom/android/systemui/power/shared/model/WakeSleepReason;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->$VALUES:[Lcom/android/systemui/power/shared/model/WakeSleepReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->Companion:Lcom/android/systemui/power/shared/model/WakeSleepReason$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->isTouch:Z

    iput p4, p0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->powerManagerWakeReason:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/power/shared/model/WakeSleepReason;
    .locals 1

    const-class v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/shared/model/WakeSleepReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/power/shared/model/WakeSleepReason;
    .locals 1

    sget-object v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->$VALUES:[Lcom/android/systemui/power/shared/model/WakeSleepReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/power/shared/model/WakeSleepReason;

    return-object v0
.end method
