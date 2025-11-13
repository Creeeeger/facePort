.class public final synthetic Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomSoundSettingsView;

    sget p1, Lcom/android/systemui/qp/SubroomSoundSettingsView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isSoundModeTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SubroomSoundSettingsView"

    const-string p1, "Subscreen Soundmode tile not available by KnoxStateMonitor."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "all_sound_off"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result p1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->setRingerModeInternal(I)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2002"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
