.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->openGuts()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->closeGuts(Z)V

    :goto_0
    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->openGuts()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->closeGuts(Z)V

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
