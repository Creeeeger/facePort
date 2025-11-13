.class public final Lcom/samsung/android/settings/share/SelectAppActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/share/SelectAppActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$1;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$1;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-boolean v1, v0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsSearchEnabled:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    const v1, 0x7f0a095d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$1;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mIsSearchEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectNoApp:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
