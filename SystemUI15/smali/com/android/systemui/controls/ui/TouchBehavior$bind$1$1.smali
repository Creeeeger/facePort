.class public final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    iget-object v1, v0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled$1()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method
