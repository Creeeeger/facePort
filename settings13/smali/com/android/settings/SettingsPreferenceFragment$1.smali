.class Lcom/android/settings/SettingsPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->-$$Nest$mupdateFooterPreference(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 139
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 150
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 160
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsPreferenceFragment;->-$$Nest$mremoveNeedlessInsetCategory(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsPreferenceFragment;->-$$Nest$mupdateFooterPreference(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 199
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 179
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsPreferenceFragment;->-$$Nest$mremoveNeedlessInsetCategory(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsPreferenceFragment;->-$$Nest$mupdateFooterPreference(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 188
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    return-void
.end method
