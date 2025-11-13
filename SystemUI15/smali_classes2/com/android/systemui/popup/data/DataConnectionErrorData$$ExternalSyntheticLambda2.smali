.class public final synthetic Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iput-boolean p2, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget-boolean v1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$$ExternalSyntheticLambda2;->f$2:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->$r8$lambda$mt1NAtdwKcK-o-Md_62rFwvD2RA(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V

    return-void
.end method
