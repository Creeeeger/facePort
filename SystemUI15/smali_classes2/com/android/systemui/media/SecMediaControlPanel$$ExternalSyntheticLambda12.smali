.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    const/4 p0, 0x1

    return p0
.end method
