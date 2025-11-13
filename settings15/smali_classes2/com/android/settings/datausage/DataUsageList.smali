.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R.\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u0008\u0010\tR*\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000b8\u0006@BX\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/android/settings/datausage/DataUsageList;",
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "<init>",
        "()V",
        "Landroid/net/NetworkTemplate;",
        "<set-?>",
        "template",
        "Landroid/net/NetworkTemplate;",
        "getTemplate",
        "()Landroid/net/NetworkTemplate;",
        "getTemplate$annotations",
        "",
        "subId",
        "I",
        "getSubId",
        "()I",
        "getSubId$annotations",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static mBound:Z


# instance fields
.field public final INTENT_ACTION_SIMHOTSWAP:Ljava/lang/String;

.field public billingCycleRepository:Lcom/android/settings/datausage/lib/BillingCycleRepository;

.field public chartDataUsagePreferenceController:Lcom/android/settings/datausage/ChartDataUsagePreferenceController;

.field public dataUsageListAppsController:Lcom/android/settings/datausage/DataUsageListAppsController;

.field public dataUsageListHeaderController:Lcom/android/settings/datausage/DataUsageListHeaderController;

.field public loadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public final mAlertTotalReceivedListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

.field public final mAlertTotalSentListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

.field public mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

.field public mHandler:Landroid/os/Handler;

.field public mIsRoaming:Z

.field public mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

.field public final mReceiver:Lcom/android/settings/datausage/DataUsageList$mReceiver$1;

.field public final mSecPhoneServiceConnectionTMB:Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

.field public mServiceMessenger:Landroid/os/Messenger;

.field public mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

.field public mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

.field public final mlifetimeMessenger:Landroid/os/Messenger;

.field public final rilHandler:Lcom/android/settings/datausage/DataUsageList$rilHandler$1;

.field public subId:I

.field public template:Landroid/net/NetworkTemplate;

.field public usageAmount:Landroidx/preference/Preference;

.field public final viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->subId:I

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$2;-><init>(Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$1;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/datausage/DataUsageListViewModel;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$4;

    invoke-direct {v3, v0}, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$4;-><init>(Lkotlin/Lazy;)V

    new-instance v4, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/datausage/DataUsageList$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->INTENT_ACTION_SIMHOTSWAP:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$mReceiver$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Lcom/android/settings/datausage/DataUsageList$mReceiver$1;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$rilHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$rilHandler$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;-><init>(Lcom/android/settings/datausage/DataUsageList;I)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;-><init>(Lcom/android/settings/datausage/DataUsageList;I)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    return-void
.end method

.method public static final access$resetTimeData(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x51

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " resetTimeData with "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataUsageList"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "toByteArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "obtainMessage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :catch_0
    return-void
.end method

.method public static final access$setSummaryfortimedata(Lcom/android/settings/datausage/DataUsageList;[B)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v2

    const/16 v0, 0x8

    invoke-static {p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v4

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v6

    const/16 v0, 0x18

    invoke-static {p1, v1, v0}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v0

    const-string p1, "setSummaryfortimedata :"

    const-string v8, ";"

    invoke-static {v2, v3, p1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "DataUsageList"

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v9, v10, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v8

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-lez p1, :cond_5

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    add-long/2addr v6, v0

    invoke-virtual {v2, p0, v6, v7}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {p1, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public static byteToLong([BII)J
    .locals 4

    array-length v0, p0

    const-wide/16 v1, 0x0

    if-ge v0, p2, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_1

    :goto_0
    const/16 v0, 0x8

    shl-long v0, v1, v0

    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v1, v0, v2

    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static synthetic getSubId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTemplate$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageList"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    const/16 v1, 0x155

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/16 p0, 0x157

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1be0    # 1.0E-41f

    :cond_3
    :goto_0
    return v1
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170175

    return p0
.end method

.method public final invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "DataUsageList"

    const-string p1, "mServiceMessenger is null. Do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/datausage/lib/BillingCycleRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/lib/BillingCycleRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->billingCycleRepository:Lcom/android/settings/datausage/lib/BillingCycleRepository;

    :try_start_0
    iget-object p1, p1, Lcom/android/settings/datausage/lib/BillingCycleRepository;->networkService:Landroid/os/INetworkManagementService;

    invoke-interface {p1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BillingCycleRepository"

    const-string v1, "problem talking with INetworkManagementService: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    const-string v0, "DataUsageList"

    if-nez p1, :cond_0

    const-string p1, "No bandwidth control; leaving"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "chart_data"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    const-string p1, "usage_amount"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->usageAmount:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-nez p1, :cond_2

    const-string p1, "No template; leaving"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Template : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v1

    const-string v2, "lifetime_data"

    const-string v3, "total_sent_data"

    const-string v4, "total_received_data"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v5, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v5, v6}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    iput-object v1, v0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;

    iput-object v1, v0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    const-class v0, Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/DataUsageListAppsController;->init(Landroid/net/NetworkTemplate;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->dataUsageListAppsController:Lcom/android/settings/datausage/DataUsageListAppsController;

    const-class v0, Lcom/android/settings/datausage/ChartDataUsagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/ChartDataUsagePreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/ChartDataUsagePreferenceController;->init(Landroid/net/NetworkTemplate;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->chartDataUsagePreferenceController:Lcom/android/settings/datausage/ChartDataUsagePreferenceController;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    const-string p0, "DataUsageList"

    const-string v0, "onDestroy: unbindService"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Lcom/android/settings/datausage/DataUsageList$mReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->INTENT_ACTION_SIMHOTSWAP:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mReceiver:Lcom/android/settings/datausage/DataUsageList$mReceiver$1;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Lcom/android/settings/widget/LoadingViewController$1;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "v"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, v7, Lcom/android/settings/datausage/DataUsageList;->billingCycleRepository:Lcom/android/settings/datausage/lib/BillingCycleRepository;

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    iget v1, v7, Lcom/android/settings/datausage/DataUsageList;->subId:I

    iget-object v2, v0, Lcom/android/settings/datausage/lib/BillingCycleRepository;->telephonyRepository:Lcom/android/settings/network/telephony/TelephonyRepository;

    invoke-virtual {v2, v1}, Lcom/android/settings/network/telephony/TelephonyRepository;->isDataEnabledFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/lib/BillingCycleRepository$isModifiableFlow$$inlined$map$1;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/datausage/lib/BillingCycleRepository$isModifiableFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/datausage/lib/BillingCycleRepository;)V

    const/4 v0, -0x1

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v11

    const-string v12, "getViewLifecycleOwner(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/android/settings/datausage/DataUsageList$onViewCreated$1;

    const-class v3, Lcom/android/settings/datausage/DataUsageList;

    const-string v5, "updatePolicy(Z)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-string v4, "updatePolicy"

    move-object v0, v13

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10, v11, v13}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v10, v7, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-nez v10, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d088b

    invoke-virtual {v7, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v15

    const v0, 0x7f0a0b63

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const v2, 0x7f060669

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    const/16 v8, 0xf

    invoke-virtual {v15, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f060738

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v8, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, v7, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageListViewModel;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageListViewModel;->templateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v9, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/settings/datausage/DataUsageListHeaderController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v7, Lcom/android/settings/datausage/DataUsageList;->subId:I

    iget-object v0, v7, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/settings/datausage/DataUsageListViewModel;

    new-instance v21, Lcom/android/settings/datausage/DataUsageList$onViewCreated$3;

    const-class v3, Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x1

    const-string v4, "updateSelectedCycle"

    const-string v16, "updateSelectedCycle(Lcom/android/settings/datausage/lib/NetworkUsageData;)V"

    const/16 v18, 0x0

    move-object/from16 v0, v21

    move-object/from16 v2, p0

    move-object v11, v5

    move-object/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v11, Lcom/android/settings/datausage/DataUsageListViewModel;->cyclesFlow:Lkotlinx/coroutines/flow/Flow;

    move-object v1, v14

    move-object v14, v13

    move-object/from16 v16, v10

    move-object/from16 v18, v1

    move-object/from16 v20, v0

    invoke-direct/range {v14 .. v21}, Lcom/android/settings/datausage/DataUsageListHeaderController;-><init>(Landroid/view/View;Landroid/net/NetworkTemplate;ILandroidx/lifecycle/LifecycleOwner;ILkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V

    iput-object v13, v7, Lcom/android/settings/datausage/DataUsageList;->dataUsageListHeaderController:Lcom/android/settings/datausage/DataUsageListHeaderController;

    iget-object v0, v7, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageListViewModel;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$onViewCreated$4;

    invoke-direct {v2, v7, v9}, Lcom/android/settings/datausage/DataUsageList$onViewCreated$4;-><init>(Lcom/android/settings/datausage/DataUsageList;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageListViewModel;->cyclesFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v0, v7, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageListViewModel;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$onViewCreated$5;

    invoke-direct {v2, v7, v9}, Lcom/android/settings/datausage/DataUsageList$onViewCreated$5;-><init>(Lcom/android/settings/datausage/DataUsageList;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageListViewModel;->chartDataFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a08de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, v7, Lcom/android/settings/datausage/DataUsageList;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_3
    invoke-virtual {v7, v9}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dd1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v11, v1

    new-instance v0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080a92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0a07a1

    const v13, 0x1020006

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    :cond_4
    const-string v0, "billingCycleRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9
.end method

.method public final processArgument()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_roaming"

    const-string v2, "network_template"

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const-string v4, "sub_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/datausage/DataUsageList;->subId:I

    const-class v4, Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->subId:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->subId:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v3, Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getMobileNetworkTemplateFromSubId(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/Optional;

    move-result-object v0

    const-string v2, "getMobileNetworkTemplateFromSubId(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    :cond_2
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->dataUsageListHeaderController:Lcom/android/settings/datausage/DataUsageListHeaderController;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/datausage/DataUsageList;->mIsRoaming:Z

    iput-boolean p0, v0, Lcom/android/settings/datausage/DataUsageListHeaderController;->isRoaming:Z

    :cond_4
    return-void
.end method
