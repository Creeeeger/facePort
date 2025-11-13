.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string p0, "MediaControlPanel"

    const-string p1, "click intent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    const-string v2, "QPNE0002"

    const-string v3, "app"

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Z)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
