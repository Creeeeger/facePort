.class Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;
.super Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
.source "SecDynamicActionBarFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->bindTitleAndGetObserver(Landroidx/typoanimation/TypoAnimationView;Landroid/os/Bundle;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

.field final synthetic val$titleView:Landroidx/typoanimation/TypoAnimationView;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroidx/typoanimation/TypoAnimationView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->val$titleView:Landroidx/typoanimation/TypoAnimationView;

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    return-object p0
.end method

.method public onDataChanged()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->this$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$1;->val$titleView:Landroidx/typoanimation/TypoAnimationView;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->-$$Nest$mrefreshTitle(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V

    return-void
.end method
