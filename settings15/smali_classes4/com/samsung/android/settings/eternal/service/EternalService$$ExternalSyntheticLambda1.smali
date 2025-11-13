.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/service/EternalService;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iput p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iget p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$1:I

    sget v1, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iget p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;->f$1:I

    sget v1, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    const-string v2, "SettingsBackup.xml"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
