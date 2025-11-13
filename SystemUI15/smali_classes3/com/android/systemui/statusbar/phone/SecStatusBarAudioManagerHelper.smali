.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;


# instance fields
.field public mCachedRingerMode:I

.field public final mContext:Landroid/content/Context;

.field public mManager:Landroid/media/AudioManager;

.field public final mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    return-object p0
.end method


# virtual methods
.method public final getManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public final getRingerMode(Z)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p0

    :goto_0
    return v1
.end method

.method public final setRingerModeInternal(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setRingerModeInternal("

    const-string v2, "StatusBarAudioManagerHelper"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") mContext==null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") AudioManager==null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
