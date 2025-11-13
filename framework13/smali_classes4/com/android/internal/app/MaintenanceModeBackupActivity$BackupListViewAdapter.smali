.class Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MaintenanceModeBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MaintenanceModeBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupListViewAdapter"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mItems:Ljava/util/LinkedList;

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;
    .locals 1
    .param p1, "position"    # I

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getItem(I)Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    const v1, 0x10203cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, "mainTextView":Landroid/widget/TextView;
    const v2, 0x10203cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, "subTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mContext:Landroid/content/Context;

    .line 114
    const v4, 0x1050219

    invoke-static {v3, v4}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v3

    .line 113
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getItem(I)Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->mainText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getItem(I)Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    .line 118
    .local v3, "subText":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 119
    const v5, 0x10203ca

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 120
    .local v5, "container":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105021c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 122
    .local v6, "padding":I
    invoke-virtual {v5, v4, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->mContext:Landroid/content/Context;

    const v8, 0x105021e

    .line 124
    invoke-static {v7, v8}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v7

    .line 123
    invoke-virtual {v2, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    .end local v5    # "container":Landroid/view/View;
    .end local v6    # "padding":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 130
    const v4, 0x1080a1c

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getCount()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 132
    if-nez p1, :cond_2

    .line 133
    const v4, 0x1080a20

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_3

    .line 135
    const v4, 0x1080a1e

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 137
    :cond_3
    const v4, 0x1080a1f

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    :cond_4
    :goto_0
    return-object v0
.end method
