.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsRegistered:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    return-void
.end method
