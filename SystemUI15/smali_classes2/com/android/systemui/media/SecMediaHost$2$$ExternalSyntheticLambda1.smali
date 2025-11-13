.class public final synthetic Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost$2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaHost$2;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/media/controls/shared/model/MediaData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaHost$2;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/media/controls/shared/model/MediaData;

    check-cast p1, Lcom/android/systemui/media/MediaType;

    check-cast p2, Landroid/view/View;

    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    invoke-virtual {p2, v1, v2, p0, p1}, Lcom/android/systemui/media/SecMediaHost;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V

    return-void
.end method
