.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    invoke-direct {v0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;-><init>()V

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mInstance:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
