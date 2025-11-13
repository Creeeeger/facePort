.class public final Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    return-void
.end method


# virtual methods
.method public getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method
