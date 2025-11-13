.class public final synthetic Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/eternal/data/EpisodeHolder;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    const-string p0, "Eternal/EternalController"

    const-string/jumbo p1, "scenes is null UID : $uid"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
