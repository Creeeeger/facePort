.class public final Lcom/android/settings/widget/SwitchBar$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/SwitchBar;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$2;->this$0:Lcom/android/settings/widget/SwitchBar;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar$2;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$2;->this$0:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/settings/widget/SwitchBar;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$2;->this$0:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, v0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    const-string v2, "/switch_bar|restricted"

    invoke-static {p1, v0, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x355

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar$2;->this$0:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method
