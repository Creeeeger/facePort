.class public final Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-void
.end method
