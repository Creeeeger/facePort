.class public final synthetic Lcom/android/settings/MainClearConfirm$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/MainClearConfirm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MainClearConfirm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/MainClearConfirm;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/MainClearConfirm;

    sget-object p1, Lcom/android/settings/MainClearConfirm;->mSalesCode:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
