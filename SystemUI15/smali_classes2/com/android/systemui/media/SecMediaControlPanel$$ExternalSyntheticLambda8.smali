.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$3:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget v1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$1:I

    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;->f$3:Landroid/widget/ImageButton;

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "type"

    const-string v6, "app"

    const-string v3, "QPNE0003"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/log/MediaLogger;

    check-cast v0, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/log/MediaLoggerImpl;->onActionClicked(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method
