.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/app/viewcapture/data/WindowData;->newBuilder()Lcom/android/app/viewcapture/data/WindowData$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/app/viewcapture/data/WindowData;

    invoke-static {v3, v2}, Lcom/android/app/viewcapture/data/WindowData;->access$700(Lcom/android/app/viewcapture/data/WindowData;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    iget-object v3, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget v3, v3, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    add-int/lit8 v3, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    iget v2, v2, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    iget v4, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    rem-int/2addr v4, v2

    invoke-static {}, Lcom/android/app/viewcapture/data/ViewNode;->newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0, p0, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    invoke-static {}, Lcom/android/app/viewcapture/data/FrameData;->newBuilder()Lcom/android/app/viewcapture/data/FrameData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/app/viewcapture/data/FrameData;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v6, v2}, Lcom/android/app/viewcapture/data/FrameData;->access$300(Lcom/android/app/viewcapture/data/FrameData;Lcom/android/app/viewcapture/data/ViewNode;)V

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    aget-wide v6, v2, v4

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/viewcapture/data/FrameData;

    invoke-static {v2, v6, v7}, Lcom/android/app/viewcapture/data/FrameData;->access$100(Lcom/android/app/viewcapture/data/FrameData;J)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/viewcapture/data/WindowData;

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/app/viewcapture/data/FrameData;

    invoke-static {v2, v4}, Lcom/android/app/viewcapture/data/WindowData;->access$200(Lcom/android/app/viewcapture/data/WindowData;Lcom/android/app/viewcapture/data/FrameData;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/WindowData;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda11;-><init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
