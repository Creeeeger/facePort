.class public final Lcom/android/systemui/qs/bar/MediaDevicesBar$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValidDB()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "qspanel_media_quickcontrol_bar_available"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string/jumbo v0, "showMediaDevices : "

    const-string v2, " valid : "

    const-string v3, "MediaDevices"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return v1
.end method

.method public final onBackup(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG::show_media_divices::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string p1, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "1"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "builder : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaDevices"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onRestore(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string/jumbo v2, "show_media_divices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string/jumbo v3, "showMediaDevices : "

    const-string v4, "   Integer.parseInt(sp[1]) : "

    invoke-static {v3, v4, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MediaDevices"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string p1, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
