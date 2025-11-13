.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

.field public final synthetic val$anchor:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->val$anchor:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->val$anchor:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "blue_light_filter_type"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
