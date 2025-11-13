.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 738
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 739
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3

    .line 748
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const/4 v0, 0x1

    const-string v1, "MobileDataOnlySettings"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    if-nez p1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v2, v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p1, "doInBackground: mProvider or ViewHolder is null, cancel task"

    .line 749
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 732
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataOnlySettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->mViewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$smupdateView(Lcom/android/settingslib/net/UidDetail;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 732
    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
