.class public final Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValidDB()Z
    .locals 1

    sget v0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final onBackup(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->access$getBackupData(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onRestore(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;->this$0:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->access$setRestoreData(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;Ljava/lang/String;)V

    return-void
.end method
