.class public final synthetic Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    return-void
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f143567

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
