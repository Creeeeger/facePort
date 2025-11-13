.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;

    return-void
.end method


# virtual methods
.method public final onSearchFilterCompleted(I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
