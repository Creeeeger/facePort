.class public abstract Lcom/samsung/android/settings/wifi/WifiListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WifiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static DBG:Z

.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WIFI6E_NONE:[I

.field private static final STATE_WIFI6E_SECURED:[I

.field private static final STATE_WIFI6_NONE:[I

.field private static final STATE_WIFI6_SECURED:[I

.field private static final mDefaultIconResId:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mFragment:Landroidx/fragment/app/Fragment;

.field protected final mHideLeftRightPadding:Z

.field protected mInSetupWizardActivity:Z

.field protected mIsSupportWifiTips:Z

.field protected mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSAScreenId:Ljava/lang/String;

.field protected mWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    .line 45
    sget v0, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mDefaultIconResId:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 46
    sput-object v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_NONE:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 47
    sget v3, Lcom/android/settings/R$attr;->state_encrypted:I

    aput v3, v2, v0

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_SECURED:[I

    new-array v2, v1, [I

    .line 48
    sget v4, Lcom/android/settings/R$attr;->state_wifi_giga:I

    aput v4, v2, v0

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_GIGA_NONE:[I

    const/4 v2, 0x2

    new-array v5, v2, [I

    aput v4, v5, v0

    aput v3, v5, v1

    .line 49
    sput-object v5, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_GIGA_SECURED:[I

    new-array v4, v1, [I

    .line 50
    sget v5, Lcom/android/settings/R$attr;->state_wifi_6:I

    aput v5, v4, v0

    sput-object v4, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_NONE:[I

    new-array v4, v2, [I

    aput v5, v4, v0

    aput v3, v4, v1

    .line 51
    sput-object v4, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_SECURED:[I

    new-array v4, v1, [I

    .line 52
    sget v5, Lcom/android/settings/R$attr;->state_wifi_6e:I

    aput v5, v4, v0

    sput-object v4, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_NONE:[I

    new-array v2, v2, [I

    aput v5, v2, v0

    aput v3, v2, v1

    .line 53
    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    .line 72
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mHideLeftRightPadding:Z

    .line 73
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    .line 74
    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    .line 75
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    const-wide/32 p2, 0x7bfa480

    .line 78
    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    return-void
.end method

.method private safeSetDefaultIcon(Landroid/widget/ImageView;)V
    .locals 1

    .line 110
    sget v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 114
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 103
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 104
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v1, :cond_1

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 99
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteItem with abnormal index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected launchActivity(Landroid/content/Intent;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityIfNeeded()V

    const/high16 v0, 0x4000000

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityFinishedIfNeeded()V

    return-void
.end method

.method protected launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 164
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityIfNeeded()V

    .line 168
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 p2, 0x67

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityFinishedIfNeeded()V

    return-void
.end method

.method protected abstract notifyOnLaunchActivityFinishedIfNeeded()V
.end method

.method protected abstract notifyOnLaunchActivityIfNeeded()V
.end method

.method public removeAll()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    .line 122
    sget-object p3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_NONE:[I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 p3, -0x1

    goto/16 :goto_5

    .line 124
    :cond_0
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_SECURED:[I

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_NONE:[I

    .line 125
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_4

    .line 128
    :cond_2
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6Network()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_SECURED:[I

    goto :goto_1

    .line 131
    :cond_3
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_NONE:[I

    .line 129
    :goto_1
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_4

    .line 132
    :cond_4
    instance-of v0, p3, Lcom/android/wifitrackerlib/StandardWifiEntry;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 133
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semIsOllehGigaAp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_GIGA_SECURED:[I

    goto :goto_2

    .line 136
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_GIGA_NONE:[I

    .line 134
    :goto_2
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_4

    .line 138
    :cond_6
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_SECURED:[I

    goto :goto_3

    .line 140
    :cond_7
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_NONE:[I

    .line 138
    :goto_3
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 142
    :goto_4
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p3

    .line 144
    :goto_5
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_6

    .line 149
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->safeSetDefaultIcon(Landroid/widget/ImageView;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    .line 94
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected visibleLeftRightPadding(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mHideLeftRightPadding:Z

    if-eqz p0, :cond_0

    .line 156
    sget p0, Lcom/android/settings/R$id;->left_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    sget p0, Lcom/android/settings/R$id;->right_margin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
