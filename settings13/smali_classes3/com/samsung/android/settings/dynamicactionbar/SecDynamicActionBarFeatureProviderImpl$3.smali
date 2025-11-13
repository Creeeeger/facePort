.class Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;
.super Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
.source "SecDynamicActionBarFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->bindLaterButtonAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/widget/Button;Landroid/os/Bundle;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->val$uri:Landroid/net/Uri;

    return-object p0
.end method

.method public onDataChanged()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$3;->val$button:Landroid/widget/Button;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->-$$Nest$mrefreshLaterButton(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;)V

    return-void
.end method
