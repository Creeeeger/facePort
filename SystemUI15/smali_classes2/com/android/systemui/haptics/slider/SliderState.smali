.class public final enum Lcom/android/systemui/haptics/slider/SliderState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/haptics/slider/SliderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum ARROW_HANDLE_MOVED_ONCE:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum ARROW_HANDLE_MOVES_CONTINUOUSLY:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum ARROW_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum DRAG_HANDLE_ACQUIRED_BY_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum DRAG_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum IDLE:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum JUMP_BOOKEND_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum JUMP_TRACK_LOCATION_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

.field public static final enum WAIT:Lcom/android/systemui/haptics/slider/SliderState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v1, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v2, "WAIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/haptics/slider/SliderState;->WAIT:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v2, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v3, "DRAG_HANDLE_ACQUIRED_BY_TOUCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_ACQUIRED_BY_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v3, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v4, "DRAG_HANDLE_RELEASED_FROM_TOUCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v4, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v5, "DRAG_HANDLE_DRAGGING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v5, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v6, "DRAG_HANDLE_REACHED_BOOKEND"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v6, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v7, "JUMP_TRACK_LOCATION_SELECTED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/haptics/slider/SliderState;->JUMP_TRACK_LOCATION_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v7, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v8, "JUMP_BOOKEND_SELECTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/haptics/slider/SliderState;->JUMP_BOOKEND_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v8, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v9, "ARROW_HANDLE_MOVED_ONCE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVED_ONCE:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v9, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v10, "ARROW_HANDLE_MOVES_CONTINUOUSLY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVES_CONTINUOUSLY:Lcom/android/systemui/haptics/slider/SliderState;

    new-instance v10, Lcom/android/systemui/haptics/slider/SliderState;

    const-string v11, "ARROW_HANDLE_REACHED_BOOKEND"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/haptics/slider/SliderState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

    filled-new-array/range {v0 .. v10}, [Lcom/android/systemui/haptics/slider/SliderState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/haptics/slider/SliderState;->$VALUES:[Lcom/android/systemui/haptics/slider/SliderState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/haptics/slider/SliderState;
    .locals 1

    const-class v0, Lcom/android/systemui/haptics/slider/SliderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/haptics/slider/SliderState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/haptics/slider/SliderState;
    .locals 1

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->$VALUES:[Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/haptics/slider/SliderState;

    return-object v0
.end method
