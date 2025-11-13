.class public final Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;->this$0:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;->this$0:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;

    invoke-virtual {v0}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->deletePrivateSpace()V

    iget-object p0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;->this$0:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
