.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final ratTypeIcon:I

.field public final showTriangle:Z


# direct methods
.method public constructor <init>(ZILcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->showTriangle:Z

    iput p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->ratTypeIcon:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SbInfo: showTriangle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->showTriangle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ratTypeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->ratTypeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
