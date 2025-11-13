.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final icon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final ratTypeIcon:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->ratTypeIcon:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->description:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QsInfo: ratTypeIcon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->ratTypeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
