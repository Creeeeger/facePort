.class public final Lcom/android/systemui/qp/SubroomSoundSettingsView$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    iget-object p2, p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;->this$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    iget p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(IZ)V

    :cond_0
    return-void
.end method
