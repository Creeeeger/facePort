.class Lcom/samsung/android/settings/widget/SecTipLinkView$1;
.super Ljava/lang/Object;
.source "SecTipLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecTipLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

.field final synthetic val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecTipLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecTipLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecTipLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method
