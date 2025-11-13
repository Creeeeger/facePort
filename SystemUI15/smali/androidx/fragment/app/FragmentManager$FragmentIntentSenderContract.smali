.class public final Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    check-cast p1, Landroidx/activity/result/IntentSenderRequest;

    new-instance p0, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/activity/result/IntentSenderRequest;->fillInIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/activity/result/IntentSenderRequest$Builder;

    iget-object v1, p1, Landroidx/activity/result/IntentSenderRequest;->intentSender:Landroid/content/IntentSender;

    invoke-direct {v0, v1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->fillInIntent:Landroid/content/Intent;

    iget v1, p1, Landroidx/activity/result/IntentSenderRequest;->flagsValues:I

    iget p1, p1, Landroidx/activity/result/IntentSenderRequest;->flagsMask:I

    iput v1, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->flagsValues:I

    iput p1, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->flagsMask:I

    new-instance p1, Landroidx/activity/result/IntentSenderRequest;

    iget-object v1, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->intentSender:Landroid/content/IntentSender;

    iget-object v2, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->fillInIntent:Landroid/content/Intent;

    iget v3, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->flagsMask:I

    iget v0, v0, Landroidx/activity/result/IntentSenderRequest$Builder;->flagsValues:I

    invoke-direct {p1, v1, v2, v3, v0}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    :cond_0
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public final parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object p0
.end method
