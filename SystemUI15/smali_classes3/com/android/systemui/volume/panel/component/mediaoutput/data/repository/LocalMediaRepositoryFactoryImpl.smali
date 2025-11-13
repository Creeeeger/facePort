.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/data/repository/LocalMediaRepositoryFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/mediaoutput/data/repository/LocalMediaRepositoryFactory;


# instance fields
.field public final eventsReceiver:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;

.field public final localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/data/repository/LocalMediaRepositoryFactoryImpl;->eventsReceiver:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/data/repository/LocalMediaRepositoryFactoryImpl;->localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;

    return-void
.end method
