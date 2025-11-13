.class public final enum Lcom/android/wm/shell/bubbles/BubbleLogger$Event;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/bubbles/BubbleLogger$Event;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_RECOVER:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

.field public static final enum BUBBLE_OVERFLOW_SELECTED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v1, 0x0

    const/16 v2, 0x1e3

    const-string v3, "BUBBLE_OVERFLOW_ADD_USER_GESTURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v2, 0x1

    const/16 v3, 0x1e4

    const-string v4, "BUBBLE_OVERFLOW_ADD_AGED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v3, 0x2

    const/16 v4, 0x1e5

    const-string v5, "BUBBLE_OVERFLOW_REMOVE_MAX_REACHED"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v4, 0x3

    const/16 v5, 0x1e6

    const-string v6, "BUBBLE_OVERFLOW_REMOVE_CANCEL"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v5, 0x4

    const/16 v6, 0x1e7

    const-string v7, "BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v6, 0x5

    const/16 v7, 0x1e8

    const-string v8, "BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v7, 0x6

    const/16 v8, 0x1e9

    const-string v9, "BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/4 v8, 0x7

    const/16 v9, 0x1ea

    const-string v10, "BUBBLE_OVERFLOW_REMOVE_BLOCKED"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/16 v9, 0x8

    const/16 v10, 0x258

    const-string v11, "BUBBLE_OVERFLOW_SELECTED"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_SELECTED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    const/16 v10, 0x9

    const/16 v11, 0x2b3

    const-string v12, "BUBBLE_OVERFLOW_RECOVER"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_RECOVER:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    filled-new-array/range {v0 .. v9}, [Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->$VALUES:[Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/BubbleLogger$Event;
    .locals 1

    const-class v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/bubbles/BubbleLogger$Event;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->$VALUES:[Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v0}, [Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->mId:I

    return p0
.end method
