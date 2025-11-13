.class public final Lcom/android/settings/utils/VoiceSettingsActivity$1;
.super Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/utils/VoiceSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/utils/VoiceSettingsActivity$1;->this$0:Lcom/android/settings/utils/VoiceSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final onCompleteResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/VoiceSettingsActivity$1;->this$0:Lcom/android/settings/utils/VoiceSettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
