.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/SecMediaHost;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/SecMediaHost;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0, p2}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
