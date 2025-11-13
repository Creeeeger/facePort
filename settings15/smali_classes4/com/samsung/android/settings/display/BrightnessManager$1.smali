.class public final Lcom/samsung/android/settings/display/BrightnessManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessManager;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v0, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hbm is enabled = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mOnHBMListener:Landroidx/core/util/Consumer;

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p1, p1, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_brightness"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mOnBrightnessChangeListener:Landroidx/core/util/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
