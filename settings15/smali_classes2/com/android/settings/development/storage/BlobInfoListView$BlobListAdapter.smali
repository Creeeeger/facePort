.class public final Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/storage/BlobInfoListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object p3, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    iget-object p3, p3, Lcom/android/settings/development/storage/BlobInfoListView;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0084

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p2, p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0a01f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobLabel:Landroid/widget/TextView;

    const v0, 0x7f0a01f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobId:Landroid/widget/TextView;

    const v0, 0x7f0a01f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobExpiry:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobSize:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, p3

    :goto_0
    iget-object p3, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140677

    invoke-virtual {v1, v3, v2}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobExpiry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getExpiryTimeMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    const v1, 0x7f140678

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    sget-object v3, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    sget-object v1, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140676

    invoke-virtual {p0, v2, v1}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getSizeBytes()J

    move-result-wide p1

    sget-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    long-to-double p1, p1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2f MB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
