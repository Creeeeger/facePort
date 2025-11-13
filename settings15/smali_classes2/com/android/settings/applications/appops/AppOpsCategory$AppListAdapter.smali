.class public final Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInflater:Landroid/view/LayoutInflater;

.field public mList:Ljava/util/List;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0052

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    const p3, 0x7f0a010e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iput-boolean v0, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    goto :goto_0

    :cond_2
    iget-boolean v5, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    if-nez v5, :cond_4

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v3, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, v4, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a0115

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0adc

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v1, p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f1403a3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-lez p0, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f0a0ade

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0a0add

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CompoundButton;

    iget p3, p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    if-ltz p3, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result p3

    :goto_3
    if-nez p3, :cond_8

    move v0, v3

    :cond_8
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-object p2
.end method
