.class public final Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "taskbar_max_recent_count"

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonTwo:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonThree:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonFour:Landroid/widget/RadioButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "taskbar_max_recent_count"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonTwo:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonThree:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonFour:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "taskbar_max_recent_count"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonTwo:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p1, p1, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonThree:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarRecentApps;->mRadioButtonFour:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
