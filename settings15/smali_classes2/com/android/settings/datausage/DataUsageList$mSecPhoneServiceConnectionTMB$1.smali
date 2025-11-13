.class public final Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onServiceConnected()"

    const-string v0, "DataUsageList"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p1, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x51

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, " getOemData with 11"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "toByteArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-string v0, "obtainMessage(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    :catch_0
    const-string p0, "getOemData(int, int).. exception occured during operation11"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "DataUsageList"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mSecPhoneServiceConnectionTMB$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    return-void
.end method
