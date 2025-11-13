.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transferred(JJ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->onProgress(JJ)V

    return-void
.end method
