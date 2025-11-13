.class public final synthetic Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.android.settings.action_button_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v2, "onActionButtonClicked"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "com.android.settings.component_name"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.android.settings.later_button_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v3, "onLaterButtonClicked"

    invoke-static {v1, v0, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "later_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "com.android.settings.keyhint"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_is_dismissed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
