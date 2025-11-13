.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    :goto_0
    return-void
.end method
