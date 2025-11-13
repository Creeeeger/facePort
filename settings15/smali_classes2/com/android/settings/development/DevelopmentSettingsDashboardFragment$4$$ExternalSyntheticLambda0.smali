.class public final synthetic Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    sget-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
