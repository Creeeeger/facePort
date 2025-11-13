.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

.field public final synthetic val$anchor:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p1, "blue_light_filter_type"

    const/4 p2, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->val$anchor:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->val$anchor:I

    const-wide/16 v2, 0x1

    const/16 v4, 0x107e

    if-ne v1, p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1081

    invoke-static {v4, p0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    if-ne v1, p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "blue_light_filter_scheduled"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "blue_light_filter_adaptive_mode"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x1cf3

    invoke-static {v4, p1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x9d08

    const-wide/16 p1, 0x0

    invoke-static {v4, p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "blue_light_filter"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1cf2

    invoke-static {v4, p0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
