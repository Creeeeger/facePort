.class public final Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final response:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    iget-object p1, p1, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getResponse()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->response:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output(response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
