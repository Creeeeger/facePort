.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$3;
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

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->show_content_settings_button:I

    if-ne p1, v0, :cond_0

    .line 74
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x114c

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method
