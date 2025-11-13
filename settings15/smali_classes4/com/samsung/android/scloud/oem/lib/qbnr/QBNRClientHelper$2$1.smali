.class public final Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

.field public final synthetic val$client:Ljava/lang/Object;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$observingUri:Landroid/net/Uri;

.field public final synthetic val$pfd:Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$sourceKey:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    iput p7, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$client:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$sourceKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$client:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;B)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$client:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;->backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
