.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->f$2:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    const/4 p0, 0x1

    return p0
.end method
