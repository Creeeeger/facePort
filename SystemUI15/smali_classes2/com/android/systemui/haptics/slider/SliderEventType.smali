.class public final enum Lcom/android/systemui/haptics/slider/SliderEventType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/haptics/slider/SliderEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum NOTHING:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum PROGRESS_CHANGE_BY_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum STARTED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum STARTED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum STOPPED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

.field public static final enum STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/haptics/slider/SliderEventType;->NOTHING:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v1, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v2, "STARTED_TRACKING_TOUCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v2, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v3, "STARTED_TRACKING_PROGRAM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v3, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v4, "PROGRESS_CHANGE_BY_USER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v4, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v5, "PROGRESS_CHANGE_BY_PROGRAM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v5, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v6, "STOPPED_TRACKING_TOUCH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    new-instance v6, Lcom/android/systemui/haptics/slider/SliderEventType;

    const-string v7, "STOPPED_TRACKING_PROGRAM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/haptics/slider/SliderEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/haptics/slider/SliderEventType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/haptics/slider/SliderEventType;->$VALUES:[Lcom/android/systemui/haptics/slider/SliderEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/haptics/slider/SliderEventType;
    .locals 1

    const-class v0, Lcom/android/systemui/haptics/slider/SliderEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/haptics/slider/SliderEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/haptics/slider/SliderEventType;
    .locals 1

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderEventType;->$VALUES:[Lcom/android/systemui/haptics/slider/SliderEventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/haptics/slider/SliderEventType;

    return-object v0
.end method
