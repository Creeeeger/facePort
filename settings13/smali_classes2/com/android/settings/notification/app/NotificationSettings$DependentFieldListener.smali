.class public Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;
.super Ljava/lang/Object;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DependentFieldListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFieldValueChanged()V
    .locals 7

    .line 602
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;

    if-eqz v2, :cond_0

    .line 604
    check-cast v1, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;

    iget-object v0, v0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 605
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->setImportant(Z)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 609
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/NotificationSettings;->access$000(Lcom/android/settings/notification/app/NotificationSettings;)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 617
    :cond_2
    iget-object v1, v0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_3

    .line 618
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 619
    :cond_3
    iget-object v0, v0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_5

    .line 620
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 623
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/app/NotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 624
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/settings/notification/app/NotificationSettings;->setVisible(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    goto :goto_3

    :cond_6
    return-void
.end method
