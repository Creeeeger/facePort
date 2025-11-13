.class public Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final IS_SUPPORT_STEREO_SPEAKER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->IS_SUPPORT_STEREO_SPEAKER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canEnableSoundBalance(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->isMuteAllSoundOffEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "run_amplify_ambient_sound"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method private convertToPercent(F)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const/high16 p1, 0x42480000    # 50.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getBalance(Landroid/content/Context;Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private static isMuteAllSoundOffEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "all_sound_off"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setBalance(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public getActionTag()Ljava/lang/String;
    .locals 0

    const-string p0, "accessibility_sound_balance"

    return-object p0
.end method

.method public getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    const-string p3, "master_balance"

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->getBalance(Landroid/content/Context;Ljava/lang/String;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p4, "connected_audio"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo p3, "speaker_balance"

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->getBalance(Landroid/content/Context;Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo p1, "phone_speakers"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-interface {p6, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getErrorDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->isMuteAllSoundOffEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f141f47

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f141f46

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "connected_audio"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const-string/jumbo p5, "phone_speakers"

    invoke-virtual {p3, p5, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p4}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->convertToPercent(F)I

    move-result p3

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->convertToPercent(F)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    rsub-int/lit8 p3, p3, 0x64

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x7f141f4a

    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->IS_SUPPORT_STEREO_SPEAKER:Z

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    const/16 p4, 0xa

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p3, 0x7f141f4c

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p3, 0x7f141f4b

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 0

    const-string/jumbo p0, "soundbalance"

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isSupportAudioFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->canEnableSoundBalance(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 p4, 0x0

    const-string p5, "connected_audio"

    invoke-static {p4, p3, p5}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p5

    const-string v0, "master_balance"

    invoke-direct {p0, p1, v0, p5}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->setBalance(Landroid/content/Context;Ljava/lang/String;F)V

    sget-boolean p5, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->IS_SUPPORT_STEREO_SPEAKER:Z

    if-eqz p5, :cond_0

    const-string/jumbo p5, "phone_speakers"

    invoke-static {p4, p3, p5}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p3

    const-string/jumbo p4, "speaker_balance"

    invoke-direct {p0, p1, p4, p3}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->setBalance(Landroid/content/Context;Ljava/lang/String;F)V

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_0
    return-void
.end method

.method public onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "connected_audio"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const-string p5, "master_balance"

    invoke-direct {p0, p1, p5, p4}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->setBalance(Landroid/content/Context;Ljava/lang/String;F)V

    sget-boolean p4, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->IS_SUPPORT_STEREO_SPEAKER:Z

    if-eqz p4, :cond_0

    const-string/jumbo p4, "phone_speakers"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const-string/jumbo p3, "speaker_balance"

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionHandler;->setBalance(Landroid/content/Context;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 0

    const-string p0, "RoutineActionHandler"

    const-string/jumbo p1, "onRequestTemplateContents: this should not be called without overriding!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method
