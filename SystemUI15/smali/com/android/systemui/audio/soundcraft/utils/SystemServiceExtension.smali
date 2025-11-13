.class public final Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method
