.class public final Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/core/SecSettingsBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.Search"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity$AssistantReceiver;->this$0:Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProviderImpl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1f5

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
