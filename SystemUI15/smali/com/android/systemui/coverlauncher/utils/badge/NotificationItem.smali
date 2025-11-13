.class public final Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public info:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->key:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
