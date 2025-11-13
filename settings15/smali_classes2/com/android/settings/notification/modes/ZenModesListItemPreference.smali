.class public final Lcom/android/settings/notification/modes/ZenModesListItemPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mZenMode:Lcom/android/settings/notification/modes/ZenMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->setZenMode(Lcom/android/settings/notification/modes/ZenMode;)V

    iget-object p1, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/notification/modes/ZenSubSettingLauncher;->forMode(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final setZenMode(Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/notification/modes/IconLoader;->getInstance()Lcom/android/settings/notification/modes/IconLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/modes/ZenMode;->getIcon(Landroid/content/Context;Lcom/android/settings/notification/modes/IconLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesListItemPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/modes/ZenModesListItemPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModesListItemPreference;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesListItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/notification/modes/FutureUtil$1;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/notification/modes/FutureUtil$1;-><init>(Ljava/util/function/Consumer;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p1, v2}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
