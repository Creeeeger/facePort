.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;
.super Ljava/lang/Object;
.source "LockScreenNotificationContentPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 56
    sget v0, Lcom/android/settings/R$id;->show_content_button:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$msetAllowPrivateSettings(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;I)V

    .line 62
    :cond_0
    sget v0, Lcom/android/settings/R$id;->hide_content_button:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->-$$Nest$msetAllowPrivateSettings(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;I)V

    :cond_1
    return-void
.end method
