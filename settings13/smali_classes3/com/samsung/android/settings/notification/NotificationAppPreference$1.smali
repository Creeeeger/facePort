.class Lcom/samsung/android/settings/notification/NotificationAppPreference$1;
.super Ljava/lang/Object;
.source "NotificationAppPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/NotificationAppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/NotificationAppPreference;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmSwitch(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmSwitch(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmChecked(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmChecked(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmChecked(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/samsung/android/settings/notification/NotificationAppPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->-$$Nest$fgetmChecked(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->access$000(Lcom/samsung/android/settings/notification/NotificationAppPreference;Z)Z

    :goto_0
    return-void
.end method
