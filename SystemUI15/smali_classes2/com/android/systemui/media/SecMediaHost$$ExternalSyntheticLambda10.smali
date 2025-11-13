.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost;

.field public final synthetic f$1:Lcom/android/systemui/media/MediaType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/MediaType;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/SecMediaHost;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$1:Lcom/android/systemui/media/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/SecMediaHost;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$1:Lcom/android/systemui/media/MediaType;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/media/SecMediaHost;->removePlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaType;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/systemui/media/SecMediaHost;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/SecMediaHost;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;->f$1:Lcom/android/systemui/media/MediaType;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/media/SecMediaHost;->removePlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaType;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
