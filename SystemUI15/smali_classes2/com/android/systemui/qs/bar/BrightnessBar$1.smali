.class public final Lcom/android/systemui/qs/bar/BrightnessBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValidDB()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "brightness_on_top"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "brightnessOnTop : "

    const-string v2, " valid : "

    const-string v3, "BrightnessOnTop"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return v1
.end method

.method public final onBackup(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG::brightness_on_top::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    const-string v1, "0"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string p1, "brightness_on_top"

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "builder : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessOnTop"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onRestore(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "brightness_on_top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    const-string v3, "isAllowedOnTop : "

    const-string v4, "   Integer.parseInt(sp[1]) : "

    invoke-static {v3, v4, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessOnTop"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
