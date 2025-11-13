.class public final Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->val$key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "senders_starred_contacts"

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "senders_contacts"

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "conversations_important"

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ConversationListSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x72d

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;->this$0:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->FALLBACK_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
