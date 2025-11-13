.class public final Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public lastOrientation:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;->lastOrientation:I

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRawLayoutDirection()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    :goto_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;->lastOrientation:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;->lastOrientation:I

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070e08

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setBackgroundHeights(I)V

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    :cond_3
    return-void
.end method
