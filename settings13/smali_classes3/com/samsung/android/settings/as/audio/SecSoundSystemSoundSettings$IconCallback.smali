.class final Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;
.super Ljava/lang/Object;
.source "SecSoundSystemSoundSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->-$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->-$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    :cond_0
    return v1
.end method
