.class public Lcom/android/systemui/util/QsResetSettingsManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "QsResetSettingsManager"


# instance fields
.field private mAppliers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDemoAppliers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftResetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/systemui/util/QsResetSettingsManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p1, Lcom/android/systemui/util/QsResetSettingsManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/QsResetSettingsManager$1;-><init>(Lcom/android/systemui/util/QsResetSettingsManager;)V

    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    const-string p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    const-string v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p0, "QsResetSettingsManager"

    const-string/jumbo p1, "registerApplier() mAppliers has same applier"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p0, "QsResetSettingsManager"

    const-string/jumbo p1, "registerDemoApplier() mAppliers has same applier"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public runDemoReset()V
    .locals 2

    const-string v0, "QsResetSettingsManager"

    const-string/jumbo v1, "runDemoReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;->applyDemoResetSetting()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public runReset()V
    .locals 2

    const-string v0, "QsResetSettingsManager"

    const-string/jumbo v1, "runReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;->applyResetSetting()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterApplier() applier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsResetSettingsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterDemoApplier() applier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsResetSettingsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mDemoAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
