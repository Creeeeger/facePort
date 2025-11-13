.class public final Lcom/android/settings/localepicker/LocaleListEditor$13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$13;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$13;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x158

    const-string v1, "add_language"

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$13;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$13;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$13;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
