.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$IconCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    :cond_0
    return v1
.end method
