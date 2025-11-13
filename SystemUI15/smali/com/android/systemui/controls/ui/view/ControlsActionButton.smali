.class public final Lcom/android/systemui/controls/ui/view/ControlsActionButton;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionButtonDescription:Ljava/lang/CharSequence;

.field public final actionIcon:Landroid/widget/ImageView;

.field public final actionIconProgress:Landroid/widget/ProgressBar;

.field public subTitle:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->subTitle:Ljava/lang/CharSequence;

    const v0, 0x7f0d00a3

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIconProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130422

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionButtonDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public final updateContentDescription()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->subTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionButtonDescription:Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
