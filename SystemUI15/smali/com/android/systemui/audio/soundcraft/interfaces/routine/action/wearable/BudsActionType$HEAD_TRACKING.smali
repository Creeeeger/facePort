.class final Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$HEAD_TRACKING;
.super Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "_head_tracking"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
