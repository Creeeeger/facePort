.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic f$5:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/TextView;Lcom/android/systemui/media/controls/shared/model/MediaData;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$4:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$5:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v4, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$4:Landroidx/constraintlayout/widget/ConstraintSet;

    const v1, 0x7f0a06d2

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->isExplicit:Z

    invoke-static {v0, v1, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;->f$5:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {p0, v1, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    iget-object p0, v2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
