.class public final enum Lcom/android/systemui/assist/AssistantInvocationEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistantInvocationEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v1, 0x1ba

    const-string v2, "ASSISTANT_INVOCATION_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v1, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v2, 0x1bb

    const-string v3, "ASSISTANT_INVOCATION_TOUCH_GESTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v2, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v3, 0x1bc

    const-string v4, "ASSISTANT_INVOCATION_TOUCH_GESTURE_ALT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v4, 0x1bd

    const-string v5, "ASSISTANT_INVOCATION_HOTWORD"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v4, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v5, 0x1be

    const-string v6, "ASSISTANT_INVOCATION_QUICK_SEARCH_BAR"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v5, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v6, 0x1bf

    const-string v7, "ASSISTANT_INVOCATION_HOME_LONG_PRESS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v6, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v7, 0x1c0

    const-string v8, "ASSISTANT_INVOCATION_PHYSICAL_GESTURE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v7, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v8, 0x212

    const-string v9, "ASSISTANT_INVOCATION_START_UNKNOWN"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v8, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v9, 0x213

    const-string v10, "ASSISTANT_INVOCATION_START_TOUCH_GESTURE"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v9, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v10, 0x214

    const-string v11, "ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v10, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v11, 0x2f6

    const-string v12, "ASSISTANT_INVOCATION_POWER_LONG_PRESS"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    filled-new-array/range {v0 .. v10}, [Lcom/android/systemui/assist/AssistantInvocationEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

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

    iput p3, p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistantInvocationEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistantInvocationEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistantInvocationEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->id:I

    return p0
.end method
