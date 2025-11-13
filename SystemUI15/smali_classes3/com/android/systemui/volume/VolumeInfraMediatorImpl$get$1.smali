.class public final Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public final synthetic $ret:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$ret:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$ret:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    return-void
.end method
