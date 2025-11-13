.class public final synthetic Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "datas"

    const-string v5, "key1"

    const-string v6, ""

    if-eqz v3, :cond_0

    new-instance v1, Landroidx/picker/model/AppData$GroupAppDataBuilder;

    invoke-direct {v1, v5}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v1, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-virtual {v1}, Landroidx/picker/model/AppData$GroupAppDataBuilder;->build()Landroidx/picker/model/appdata/GroupAppData;

    move-result-object p0

    filled-new-array {p0}, [Landroidx/picker/model/AppData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v7, 0x7f142dce

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v7, Landroidx/picker/model/AppData$GroupAppDataBuilder;

    invoke-direct {v7, v5}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, v7, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    iput-object v1, v7, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-virtual {v7}, Landroidx/picker/model/AppData$GroupAppDataBuilder;->build()Landroidx/picker/model/appdata/GroupAppData;

    move-result-object v1

    new-instance v3, Landroidx/picker/model/AppData$GroupAppDataBuilder;

    const-string v5, "key2"

    invoke-direct {v3, v5}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object v6, v3, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v3, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-virtual {v3}, Landroidx/picker/model/AppData$GroupAppDataBuilder;->build()Landroidx/picker/model/appdata/GroupAppData;

    move-result-object p0

    filled-new-array {v1, p0}, [Landroidx/picker/model/AppData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_1
    invoke-virtual {v2, p0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object p0, v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    return-void
.end method
