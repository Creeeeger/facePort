.class Lcom/android/internal/app/ChooserActivity$18;
.super Landroid/text/style/ClickableSpan;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setSpannableLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 9298
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$18;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 9301
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$18;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 9302
    .local v0, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.sharelive.action.TIP_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9303
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "only_d2d_tip"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9304
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9305
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9306
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 9307
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$18;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/ChooserActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9309
    .end local v2    # "uid":I
    :cond_0
    return-void
.end method
