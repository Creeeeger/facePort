.class public final synthetic Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;

.field public final synthetic f$1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method
