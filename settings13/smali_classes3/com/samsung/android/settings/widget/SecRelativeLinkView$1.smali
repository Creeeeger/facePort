.class Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;
.super Ljava/lang/Object;
.source "SecRelativeLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field final synthetic val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->-$$Nest$fgetmTargetFragment(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->-$$Nest$fgetmTargetFragment(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method
