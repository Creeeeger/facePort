.class public final synthetic Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    const-string v2, "/"

    invoke-static {p1, v2, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionDBKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[save] mouseButtonType : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  / app : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MouseFunctionKeyInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->releaseKeyCustomizationInfo(I)V

    invoke-static {v1, p1, p2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->setKeyCustomizationInfo(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
