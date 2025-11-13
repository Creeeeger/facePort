.class public final Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeController;


# instance fields
.field public final nodeLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MediaContainer"

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->nodeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNodeLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final offerToKeepInParentForAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final removeFromParentIfKeptForAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final resetKeepInParentForAnimation()V
    .locals 0

    return-void
.end method
