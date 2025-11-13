.class public abstract enum Lcom/android/systemui/keyguard/shared/model/TransitionState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/TransitionState;

.field public static final enum CANCELED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

.field public static final enum FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

.field public static final enum RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

.field public static final enum STARTED:Lcom/android/systemui/keyguard/shared/model/TransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/TransitionState$STARTED;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/TransitionState$STARTED;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->STARTED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/TransitionState$RUNNING;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/TransitionState$RUNNING;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/shared/model/TransitionState;->RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/TransitionState$FINISHED;

    const-string v3, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/shared/model/TransitionState$FINISHED;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/TransitionState$CANCELED;

    const-string v4, "CANCELED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/shared/model/TransitionState$CANCELED;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/shared/model/TransitionState;->CANCELED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/keyguard/shared/model/TransitionState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/TransitionState;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/shared/model/TransitionState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/TransitionState;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/TransitionState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/TransitionState;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/TransitionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/TransitionState;

    return-object v0
.end method


# virtual methods
.method public abstract isTransitioning()Z
.end method
