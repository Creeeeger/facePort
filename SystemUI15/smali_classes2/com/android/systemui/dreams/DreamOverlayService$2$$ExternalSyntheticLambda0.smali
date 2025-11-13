.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService$2;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService$3;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayService$3;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService$3;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iget-boolean v1, v1, Lcom/android/systemui/dreams/DreamOverlayService;->mBouncerShowing:Z

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService$3;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/systemui/dreams/DreamOverlayService;->mBouncerShowing:Z

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService$3;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->updateLifecycleStateLocked()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayService$2;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iget-boolean v1, v1, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalVisible:Z

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalVisible:Z

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService$2;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->updateLifecycleStateLocked()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
