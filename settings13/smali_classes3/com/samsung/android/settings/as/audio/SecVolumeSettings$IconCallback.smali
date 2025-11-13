.class final Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;
.super Ljava/lang/Object;
.source "SecVolumeSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmRingController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmRingController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmBixbyController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmBixbyController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 356
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmVolumeCallback(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->stopSample()V

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
