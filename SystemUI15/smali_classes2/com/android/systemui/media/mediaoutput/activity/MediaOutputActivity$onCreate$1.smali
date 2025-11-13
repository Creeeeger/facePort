.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    sget p2, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->$r8$clinit:I

    iget-object p2, p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
