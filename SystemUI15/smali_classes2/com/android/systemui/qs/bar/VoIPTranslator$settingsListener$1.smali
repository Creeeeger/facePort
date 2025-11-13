.class public final Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VoIPTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "voip_translator_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/VoIPTranslator;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/VoIPTranslator;->access$getSettingsHelper$p(Lcom/android/systemui/qs/bar/VoIPTranslator;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getVoIPTranslatorEnable()Z

    move-result p1

    const-string v0, "onChanged() - voip_translator_enable : "

    const-string v1, "VoIPTranslator"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    invoke-static {}, Lcom/android/systemui/qs/bar/VoIPTranslator;->updatePrerequisite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
