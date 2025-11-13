.class public final Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/settings/development/storage/LeaseInfoListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLeases()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object p3, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    iget-object p3, p3, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0456

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p2, p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f0a010e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->appIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a08a5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leasePackageName:Landroid/widget/TextView;

    const v1, 0x7f0a08a3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseDescription:Landroid/widget/TextView;

    const v1, 0x7f0a08a4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseExpiry:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, p3

    :goto_0
    iget-object p3, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/LeaseInfo;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leasePackageName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseDescription:Landroid/widget/TextView;

    const v2, 0x7f140232

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescriptionResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-virtual {v0, v2}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseExpiry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getExpiryTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    const p1, 0x7f140231

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_3
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    sget-object p1, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    sget-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f14022f

    invoke-virtual {p0, v0, p1}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    :cond_4
    throw p1
.end method
