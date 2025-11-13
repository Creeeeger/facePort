.class public final synthetic Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.android.settings.later_button_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "com.android.settings.action_button_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
