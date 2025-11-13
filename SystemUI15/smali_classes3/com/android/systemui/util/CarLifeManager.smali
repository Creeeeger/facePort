.class public Lcom/android/systemui/util/CarLifeManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final CATEGORY_CARLIFE:Ljava/lang/String; = "com.samsung.android.hardware.display.category.CARLIFE_DISPLAY"

.field private static final TAG:Ljava/lang/String; = "CarLifeManager"


# instance fields
.field private final mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/CarLifeManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    return-void
.end method


# virtual methods
.method public isCarLifeMode()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/CarLifeManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
