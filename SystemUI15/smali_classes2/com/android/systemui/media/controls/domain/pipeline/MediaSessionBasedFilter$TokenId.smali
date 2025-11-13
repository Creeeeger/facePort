.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;->id:I

    return-void
.end method

.method public constructor <init>(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;

    iget p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;->id:I

    iget p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;->id:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenId(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$TokenId;->id:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
