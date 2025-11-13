.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v1, :cond_2

    const-string v1, "mobileData settings changed mobileDataEnabled "

    const-string v2, " visibility :"

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardKnoxGuardView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13091a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
