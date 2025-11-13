.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/flags/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mJob:Lkotlinx/coroutines/Job;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/settingslib/wifi/WifiUtils;->checkWepAllowed(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda2;Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->wifiConnect(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->launchWifiDetailsSetting(Landroid/view/View;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
