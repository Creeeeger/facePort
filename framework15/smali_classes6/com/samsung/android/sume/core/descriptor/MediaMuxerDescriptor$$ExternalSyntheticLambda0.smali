.class public final synthetic Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {p1}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->lambda$setMediaTypeToNotifyEvent$0(Lcom/samsung/android/sume/core/types/MediaType;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
