.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$3:Z

    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$3:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda5;->f$4:Z

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiEntriesCount:I

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHasMoreWifiEntries:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->updateDialog(Z)V

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    iget v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiEntriesCount:I

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntries:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
