.class public Lcom/android/internal/app/MaintenanceModeBackupActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;,
        Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;,
        Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

.field private final blacklist mBackupMenuItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCloudBackupExpiryDate:I

.field private final blacklist mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCloudBackupStatus:Ljava/lang/String;

.field private blacklist mCloudBackupTimerTask:Ljava/util/TimerTask;

.field private blacklist mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsCloudBackupSupported:Z

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z

.field private final blacklist mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mTimer:Ljava/util/Timer;


# direct methods
.method public static synthetic blacklist $r8$lambda$CyudHYAYXsZ5UWbXoWbpmzzx7-U(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupMenuItemSubText()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zmC_hLe1tCiftJOVz7mIfSqU7Js(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupMenuVisibility()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCloudBackupSupported(Lcom/android/internal/app/MaintenanceModeBackupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleThreadExecutor(Lcom/android/internal/app/MaintenanceModeBackupActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCloudBackupStatusFromProvider(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupStatusFromProvider()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCloudBackupStatusFromReceiver(Lcom/android/internal/app/MaintenanceModeBackupActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupStatusFromReceiver(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsTablet:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsFold:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    .line 42
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupExpiryDate:I

    .line 43
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupStatus:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mTimer:Ljava/util/Timer;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    return-void
.end method

.method private blacklist convertActionToStatusForCloudBackup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 443
    const-string v0, "NONE"

    return-object v0

    .line 439
    :pswitch_0
    const-string v0, "BACKUP_NON_FINISHED"

    return-object v0

    .line 437
    :pswitch_1
    const-string v0, "BACKUP_COMPLETED"

    return-object v0

    .line 435
    :pswitch_2
    const-string v0, "BACKUP_RUNNING"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x15d05067 -> :sswitch_3
        0x2cc33ed3 -> :sswitch_2
        0x3432a41d -> :sswitch_1
        0x5e23d14c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist initializeBackupMenuItems()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "r":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    .line 178
    const v2, 0x10406ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    .line 179
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupMenuItemSubText()V

    .line 180
    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    .line 181
    const v2, 0x10406f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v1, "externalStorageItem":Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 184
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private blacklist registerCloudBackupReceiver()V
    .locals 4

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 430
    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 189
    const v0, 0x109002a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->setContentView(I)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 193
    .local v1, "isLandscape":Z
    :goto_0
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 194
    .local v3, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPopOver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MaintenanceMode"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsTablet:Z

    const v5, 0x10203c8

    if-eqz v4, :cond_4

    .line 197
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 198
    .local v4, "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 199
    .local v5, "padding":I
    if-eqz v3, :cond_1

    .line 200
    if-eqz v1, :cond_3

    .line 201
    const v6, 0x1050204

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 205
    :cond_1
    if-eqz v1, :cond_2

    .line 206
    const v6, 0x1050203

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 209
    :cond_2
    const v6, 0x1050202

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 213
    :cond_3
    :goto_1
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 214
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsFold:Z

    const/16 v6, 0x400

    if-eqz v4, :cond_9

    .line 215
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    .line 216
    if-eqz v1, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 219
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3

    .line 222
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 224
    .restart local v4    # "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 225
    .restart local v5    # "padding":I
    if-nez v3, :cond_8

    .line 226
    if-eqz v1, :cond_7

    .line 227
    const v6, 0x1050201

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 230
    :cond_7
    const v6, 0x1050200

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 234
    :cond_8
    :goto_2
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    .line 237
    :cond_9
    if-eqz v1, :cond_a

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 240
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 244
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const v5, 0x1060223

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 246
    const v2, 0x10203c9

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 247
    .local v2, "listView":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const v5, 0x1080a1d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    new-instance v4, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v4, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    .line 249
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    new-instance v4, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupMenuVisibility()V

    .line 277
    return-void
.end method

.method private blacklist updateCloudBackupMenuItemSubText()V
    .locals 7

    .line 375
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupStatus:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "BACKUP_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_1
    const-string v3, "BACKUP_RUNNING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "BACKUP_NON_FINISHED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    const v2, 0x1150009

    iget v3, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupExpiryDate:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 394
    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    goto :goto_1

    .line 390
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    const v2, 0x10406f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    .line 392
    goto :goto_1

    .line 386
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    const v2, 0x10406f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    .line 388
    goto :goto_1

    .line 382
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    const v2, 0x10406f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->subText:Ljava/lang/String;

    .line 384
    nop

    .line 400
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->notifyDataSetChanged()V

    .line 403
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2c16aedf -> :sswitch_2
        -0xd7f2fde -> :sswitch_1
        0x4ed9fee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateCloudBackupMenuVisibility()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudItem:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupListViewAdapter:Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupListViewAdapter;->notifyDataSetChanged()V

    .line 372
    :cond_2
    :goto_0
    return-void

    .line 358
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist updateCloudBackupStatusFromProvider()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupStatus:Ljava/lang/String;

    .line 348
    new-instance v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method private blacklist updateCloudBackupStatusFromReceiver(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->convertActionToStatusForCloudBackup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupStatus:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCreate$0$com-android-internal-app-MaintenanceModeBackupActivity()V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupStatusFromProvider()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->checkWhetherCloudBackupIsSupported(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 168
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    .line 169
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupExpiryDate:I

    .line 170
    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method synthetic blacklist lambda$onResume$4$com-android-internal-app-MaintenanceModeBackupActivity()V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->updateCloudBackupStatusFromProvider()V

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->checkWhetherCloudBackupIsSupported(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 286
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    .line 287
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupExpiryDate:I

    .line 288
    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method synthetic blacklist lambda$setContentView$1$com-android-internal-app-MaintenanceModeBackupActivity()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const-string v1, "7083"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setContentView$2$com-android-internal-app-MaintenanceModeBackupActivity()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const-string v1, "7074"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setContentView$3$com-android-internal-app-MaintenanceModeBackupActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 252
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mBackupMenuItems:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;

    iget v0, v0, Lcom/android/internal/app/MaintenanceModeBackupActivity$BackupMenuItem;->id:I

    .line 253
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 264
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.easyMover"

    invoke-static {v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-static {v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->startActivityToBackup(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->finish()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-static {v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->startActivityToBackup(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 257
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupStatus:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->startCloudActivityAsBackupStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->finish()V

    .line 260
    nop

    .line 275
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 344
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_CLOUD_BACKUP_SUPPORTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsCloudBackupSupported:Z

    .line 154
    const-string v1, "CLOUD_BACKUP_EXPIRY_DATE"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupExpiryDate:I

    .line 158
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsTablet:Z

    .line 159
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isFold()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mIsFold:Z

    .line 161
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->initializeBackupMenuItems()V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->registerCloudBackupReceiver()V

    .line 165
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 172
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 327
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 333
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->onBackPressed()V

    .line 335
    const/4 v0, 0x1

    return v0

    .line 337
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onPause()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 316
    return-void
.end method

.method protected whitelist onResume()V
    .locals 8

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 291
    new-instance v3, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    iput-object v3, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    .line 305
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x7530

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 308
    return-void
.end method
