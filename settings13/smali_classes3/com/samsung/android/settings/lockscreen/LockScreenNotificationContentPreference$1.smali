.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;
.super Ljava/lang/Object;
.source "LockScreenNotificationContentPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 38
    sget v0, Lcom/android/settings/R$id;->show_content_container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$fgetmHideContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$fgetmShowContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$msetSettingsBtnEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;Z)V

    .line 44
    :cond_0
    sget v0, Lcom/android/settings/R$id;->hide_content_container:I

    if-ne p1, v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$fgetmHideContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$fgetmShowContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$msetSettingsBtnEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;Z)V

    :cond_1
    return-void
.end method
