.class public final Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public final synthetic val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field public final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-wide v2, p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLastClickTime:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iget-wide v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->clickInterval:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignore click : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RelativeLinkView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-wide v0, p1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLastClickTime:J

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$tv:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
