.class public final Lcom/android/systemui/media/SecMediaControlPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "enable"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "DualPlayModeReceiver.onReceive() = "

    const-string v0, ",  mViewHolder.getAppName() = "

    invoke-static {p2, v0, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mAppName:Ljava/lang/String;

    const-string v1, "MediaControlPanel"

    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateDeviceName()V

    return-void
.end method
