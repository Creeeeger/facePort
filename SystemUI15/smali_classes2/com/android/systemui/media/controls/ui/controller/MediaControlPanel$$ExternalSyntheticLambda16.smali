.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final synthetic f$3:Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;

.field public final synthetic f$4:Lcom/android/systemui/media/controls/shared/model/MediaButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;Lcom/android/systemui/media/controls/shared/model/MediaButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$1:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$3:Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$4:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$3:Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;

    if-eqz v2, :cond_1

    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->rebindId:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iput-object v5, v3, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->unregisterAll()V

    iget-object v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->tryRegister(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->tryRegister(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->unregisterAll()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->f$4:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setSemanticButtonVisibleAndAlpha(ILcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
