.class public final enum Lcom/android/systemui/assist/AssistantSessionEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistantSessionEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v1, "ASSISTANT_SESSION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v2, 0x20c

    const-string v3, "ASSISTANT_SESSION_TIMEOUT_DISMISS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v3, 0x20d

    const-string v4, "ASSISTANT_SESSION_INVOCATION_START"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v4, 0x20e

    const-string v5, "ASSISTANT_SESSION_INVOCATION_CANCELLED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v4, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v5, 0x20f

    const-string v6, "ASSISTANT_SESSION_USER_DISMISS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v6, 0x210

    const-string v7, "ASSISTANT_SESSION_UPDATE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v6, Lcom/android/systemui/assist/AssistantSessionEvent;

    const/16 v7, 0x211

    const-string v8, "ASSISTANT_SESSION_CLOSE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/assist/AssistantSessionEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistantSessionEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistantSessionEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return p0
.end method
