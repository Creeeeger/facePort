.class final Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;
.super Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x489

    const-string v4, "Face auth started/stopped due to device starting to wake up."

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final extraInfoToString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getExtraInfo()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
