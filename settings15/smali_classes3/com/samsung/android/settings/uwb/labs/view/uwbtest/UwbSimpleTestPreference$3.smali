.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

.field public final synthetic val$isUwbEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iput-boolean p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;->val$isUwbEnabled:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;->val$isUwbEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->initViewDisenabled()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mLayout0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mLayout2:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
