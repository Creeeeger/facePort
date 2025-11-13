.class public final Lcom/android/settings/SettingsPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference$1()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference$1()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public final onItemRangeMoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference$1()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method
