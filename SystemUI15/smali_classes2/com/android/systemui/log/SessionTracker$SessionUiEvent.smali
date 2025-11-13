.class final enum Lcom/android/systemui/log/SessionTracker$SessionUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/log/SessionTracker$SessionUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

.field public static final enum KEYGUARD_SESSION_END_GOING_TO_SLEEP:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

.field public static final enum KEYGUARD_SESSION_END_KEYGUARD_GOING_AWAY:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    const/4 v1, 0x0

    const/16 v2, 0x54a

    const-string v3, "KEYGUARD_SESSION_END_KEYGUARD_GOING_AWAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->KEYGUARD_SESSION_END_KEYGUARD_GOING_AWAY:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    new-instance v1, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    const/4 v2, 0x1

    const/16 v3, 0x54b

    const-string v4, "KEYGUARD_SESSION_END_GOING_TO_SLEEP"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->KEYGUARD_SESSION_END_GOING_TO_SLEEP:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    filled-new-array {v0, v1}, [Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->$VALUES:[Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

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

    iput p3, p0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/log/SessionTracker$SessionUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/log/SessionTracker$SessionUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->$VALUES:[Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->mId:I

    return p0
.end method
