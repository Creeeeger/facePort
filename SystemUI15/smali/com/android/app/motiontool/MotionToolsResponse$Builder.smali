.class public final Lcom/android/app/motiontool/MotionToolsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->access$000()Lcom/android/app/motiontool/MotionToolsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/app/motiontool/MotionToolsResponse$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse;->access$200(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/ErrorResponse;)V

    return-void
.end method
