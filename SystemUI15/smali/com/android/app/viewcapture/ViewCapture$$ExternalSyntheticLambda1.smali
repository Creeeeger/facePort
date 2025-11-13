.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    iput p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/app/viewcapture/data/WindowData;

    invoke-static {}, Lcom/android/app/viewcapture/data/MotionWindowData;->newBuilder()Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/app/viewcapture/data/WindowData;->getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/MotionWindowData;

    invoke-static {v1, p1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$400(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    invoke-static {p1, p0}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$900(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
