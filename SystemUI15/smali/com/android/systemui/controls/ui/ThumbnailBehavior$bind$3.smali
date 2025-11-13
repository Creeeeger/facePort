.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $colorOffset:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    iput p3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$colorOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->getThumbnail()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v3, :cond_4

    move-object v1, v3

    :cond_4
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    iget p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;->$colorOffset:I

    invoke-direct {v3, v2, v0, v4, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3$1;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/ClipDrawable;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
