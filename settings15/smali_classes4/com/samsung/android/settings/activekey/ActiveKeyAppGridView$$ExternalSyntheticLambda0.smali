.class public final synthetic Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "quickMessageSender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    const p1, 0x7f1437fd

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "[save] Press Type : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ app : "

    const-string v3, "ActiveKeyInfo"

    invoke-static {p2, v2, p1, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return v1
.end method
