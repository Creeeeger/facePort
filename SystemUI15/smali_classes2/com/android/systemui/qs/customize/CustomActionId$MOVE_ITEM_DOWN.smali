.class final Lcom/android/systemui/qs/customize/CustomActionId$MOVE_ITEM_DOWN;
.super Lcom/android/systemui/qs/customize/CustomActionId;
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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/CustomActionId;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    const p0, 0x7f130e33

    return p0
.end method

.method public final getName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f130e33

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
